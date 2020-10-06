const express = require('express');
const bodyParser = require('body-parser');
const app = express();
const path = require("path")
var session = require('express-session');

const fileUpload = require('express-fileupload');
// const fs  =require("fs")
// fs.readFile("server.js", 'utf8', (err, res) => {
// 	console.log(res)
// });
//Middleware
app.use(fileUpload());
app.set('views',path.join(__dirname,'views'));
app.set('view engine', 'hbs');
app.use('/assets',express.static(__dirname + '/public'));
app.use(bodyParser.json())
app.use(bodyParser.urlencoded({ extended: false}))

app.use(session({
	secret: 'secret',
	resave: true,
	saveUninitialized: true

}));
//var conn = require("./js/conn.js");
var routes = require("./js/routes.js");
var postMethods = require("./js/postMethods.js");

app.use("/", routes);
app.use("/postMethods", postMethods);

//Start Server
app.listen(3000, ()=> console.log("Server started on 3000"))