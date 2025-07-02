const express = require('express');
const sqlite3 = require('sqlite3').verbose();
const path = require('path');

const app = express();
const db = new sqlite3.Database('./database.db'); 

app.use(express.static('public'));
app.use(express.json());


app.get('/api/moods', (req, res) => {
    db.all('SELECT * FROM moods', [], (err, rows) => {
        if (err) {
            console.error(err);
            res.status(500).send('Erreur serveur');
        } else {
            res.json(rows);
        }
    });
});


app.get('/api/trips', (req, res) => {
    const moodId = req.query.mood;
    db.all('SELECT * FROM trips WHERE mood_id = ?', [moodId], (err, rows) => {
        if (err) {
            console.error(err);
            res.status(500).send('Erreur serveur');
        } else {
            res.json(rows);
        }
    });
});


app.get('/api/trip/:id', (req, res) => {
    const tripId = req.params.id;
    db.get('SELECT * FROM trips WHERE id = ?', [tripId], (err, row) => {
        if (err) {
            console.error(err);
            res.status(500).send('Erreur serveur');
        } else {
            res.json(row);
        }
    });
});


app.get('/api/moods/:id', (req, res) => {
    const moodId = req.params.id;
    db.get('SELECT * FROM moods WHERE id = ?', [moodId], (err, row) => {
        if (err) {
            console.error(err);
            res.status(500).send('Erreur serveur');
        } else {
            res.json(row);
        }
    });
});

//  Page d'accueil
app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'public', 'index.html'));
});

// liste des journée
app.get('/api/trip/:id/program', (req, res) => {
    const tripId = req.params.id;
    db.all('SELECT day, activities FROM trip_programs WHERE trip_id = ?', [tripId], (err, rows) => {
        if (err) {
            console.error(err);
            res.status(500).send('Erreur lors de la récupération du programme');
        } else {
            res.json(rows);
        }
    });
});



// Démarrage du serveur
const PORT = 3000;
app.listen(PORT, () => {
    console.log(`Serveur lancé sur http://localhost:${PORT}`);
});
