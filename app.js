
const express = require('express')
const app = express()
var path = require('path');

app.use(express.static(__dirname + '/dist'));

var port = process.env.PORT || 3000
app.listen(port, function() {
    console.log("To view your app, open this link in your browser: http://localhost:" + port);
});
