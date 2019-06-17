var app = require('express')();
var http = require('http').Server(app);
var io = require('socket.io')(http);
var port = process.env.PORT || 3000;
var count = 1

app.get('/', function(req, res){
  res.sendFile(__dirname + '/index.html');
});

io.on('connection', function(socket){
  console.log(count +' user(s) connected');
  socket.on('chat message', function(msg){
  io.emit('chat message', msg);
  });
  count++;
});

http.listen(port, function(){
  console.log('listening on *:' + port);
});
