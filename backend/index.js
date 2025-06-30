const express = require('express');
const app = express();
app.use(express.json());

app.get('/', (req, res) => {
  res.send('Rehearsal Scheduler Harmony API');
});

// Additional endpoints to be added for users, bands, rehearsals, attendance etc.

const PORT = process.env.PORT || 5000;
app.listen(PORT, () => console.log(`Server running on port ${PORT}`));