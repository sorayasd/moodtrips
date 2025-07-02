CREATE TABLE IF NOT EXISTS moods (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,
  description TEXT
);

CREATE TABLE IF NOT EXISTS trips (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT NOT NULL,
  mood_id INTEGER,
  destination TEXT,
  description TEXT,
  FOREIGN KEY (mood_id) REFERENCES moods(id)
);

INSERT INTO moods (id, name, description) VALUES
(1, 'Boussole Inutile', 'Une ville. Du bruit. Des gens. Des passants. Qui marchent vite ou lentement. Qui traversent la rue. Qui s''affairent. Vous vous amuserez sûrement à deviner qui sort du travail ou s''y rend, qui est artiste peintre, qui est fleuriste. Puis viennent les lumières flamboyantes, les ruelles infinies, les boutiques aux concepts parfaitement étrangers, les restaurants où l''on découvre des saveurs nouvelles. Une sorte de tourbillon (déroutant, mais étrangement réconfortant) qui vous pousse à penser, ne serait-ce qu''un instant : “Et si je m''installais ici ?”'),
(2, 'Slow Summer', 'Il fait chaud, l''eau est claire, et tout va lentement. Pas de programme, pas d''objectif. Juste des cabanes, du sable, des voix qui s''éloignent et reviennent avec la marée. C''est l''été sans urgence. Celui qu''on savoure sans compter les jours.'),
(3, 'Petites choses cachées', 'Pour les soucieux du détail, pour celles et ceux qui marchent doucement et qui regardent autour. Ceux qui savent repérer les petits recoins, les librairies discrètes, les cafés à lumière tamisée. Découvrez une ville entière à travers ces lieux cachés, en suivant un fil invisible entre les vitrines poussiéreuses, les ruelles tranquilles et les bancs oubliés.'),
(4, 'Tranquillité côtière', 'La même sensation que l''on éprouve debout sur une falaise, au bord du monde, face à la mer ou à l''océan. Le vent souffle sur votre visage, l''air sent le sel : cette odeur vive qui fait du bien au système nerveux. Vous avez trouvé un endroit pour rester, quelque part dans cette zone calme, brute et ouverte. Un lieu où le bruit de la mer n''est jamais bien loin.'),



INSERT INTO trips (id, title, mood_id, destination, description) VALUES
-- Boussole Inutile (mood_id = 1)
(1, 'Tokyo, Japon', 1, 'Tokyo', 'Tokyo donne l’impression d’être minuscule au milieu d’un monde immense, mais étrangement vivant. On la pense futuriste, bruyante, saturée de lumières. Pourtant, elle cache des coins de silence. Une ruelle, une lanterne, un jardin zen entre deux tours.'),
(2, 'Séoul, Corée du Sud', 1, 'Séoul', 'Séoul vibre fort. D’un côté, les néons de Gangnam, les vitrines, la musique à fond. De l’autre, les palais anciens, les odeurs de barbecue, l’agitation des marchés.'),
(3, 'Singapour', 1, 'Singapour', 'Singapour respire. Entre les tours, les arbres sont immenses, comme s’ils avaient toujours été là. Dans Chinatown ou Little India, les rues changent d’odeur et de rythme en quelques mètres.'),
(4, 'Copenhague, Danemark', 1, 'Copenhague', 'À Copenhague, les choses vont doucement. On entend les vélos plus que les voitures. Les canaux brillent même quand le ciel est gris.'),

-- Slow Summer (mood_id = 2)
(5, 'Formentera, Baléares (Espagne)', 2, 'Formentera', 'Formentera est l’image parfaite d’un été suspendu : plages de sable blanc, eaux turquoise et criques secrètes. La vie y est douce, rythmée par le chant des oiseaux et le clapotis des vagues.'),
(6, 'Île de Ré, France', 2, 'Île de Ré', 'L’Île de Ré séduit par ses villages blancs, ses pistes cyclables au cœur des marais salants et ses plages paisibles.'),
(7, 'San Vicente de la Barquera, Cantabrie (Espagne)', 2, 'San Vicente de la Barquera', 'Ce village de pêcheurs entre montagnes et plages sauvages offre un cadre authentique et apaisant.'),
(8, 'Fethiye, Turquie', 2, 'Fethiye', 'Entre mer Égée et montagnes, Fethiye charme par ses eaux limpides et ses marchés colorés.'),

-- Tranquillité côtière (mood_id = 3)
(9, 'Cape May, New Jersey, USA', 3, 'Cape May', 'Station balnéaire historique au charme victorien, Cape May séduit par ses plages calmes.'),
(10, 'St Ives, Cornouailles, Royaume-Uni', 3, 'St Ives', 'Charmante ville côtière avec ses plages de sable fin, ses ruelles pittoresques et ses ateliers d’artistes.'),
(11, 'Bar Harbor, Maine, USA', 3, 'Bar Harbor', 'Port de pêche tranquille au bord du parc national Acadia, Bar Harbor offre des paysages côtiers sauvages.'),
(12, 'Côte d’Opale, Nord-Pas-de-Calais, France', 3, 'Côte d’Opale', 'Cette côte offre de vastes plages, des falaises impressionnantes et des petits villages de pêcheurs.'),

-- Petites choses cachées (mood_id = 4)
(13, 'Paris, France', 4, 'Paris', 'Flânez dans les ruelles intimistes du Marais ou de Montmartre, entre librairies anciennes et cafés feutrés.'),
(14, 'Londres, Royaume-Uni', 4, 'Londres', 'Explorez les quartiers pleins de charme comme Fitzrovia ou Notting Hill, entre librairies indépendantes, marchés colorés et pubs historiques.'),
(15, 'Édimbourg, Écosse', 4, 'Édimbourg', 'Découvrez la magie d’Édimbourg, ses ruelles pavées, ses librairies nichées dans des bâtiments anciens, et ses cafés cosy au charme écossais.'),
(16, 'Maastricht, Pays-Bas', 4, 'Maastricht', 'Découvrez une librairie unique installée dans une ancienne église gothique, et parcourez les ruelles chargées d’histoire.');
