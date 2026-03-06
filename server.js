const express = require('express');
const mysql = require('mysql2');
const path = require('path');
const cors = require('cors');

const app = express();
app.use(cors());

// Step A: Public folder-ai serve pannuthu (index.html ithukulla irukanum)
app.use(express.static(path.join(__dirname, 'public')));

const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'tiger', // Unga password 1102 sariya kudunga
    database: 'college_db'
});

db.connect(err => {
    if (err) console.log("MySQL Connect Aagala! Error: " + err);
    else console.log("MySQL Connected Successfully!");
});

// Step B: API Endpoint
app.get('/api/staff-details', (req, res) => {
    const name = req.query.name || '';
    const sql = "SELECT * FROM course_details WHERE faculty_name LIKE ? ORDER BY year ASC";
    db.query(sql, [`%${name}%`], (err, results) => {
        if (err) return res.status(500).json(err);
        res.json(results);
    });
});

// Step C: Main Route - Frontend-ai backend vazhiya load panna
app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'public', 'index.html'));
});

app.listen(5500, () => {
     console.log("Backend & Frontend Running at: http://localhost:5500");
});

