const http = require('http');
const os = require('os');
http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/plain' });
  res.end(`Hello DevOps0 from SanjaiSen on ${new Date()}`);
}).listen(3000, () => console.log('App running on port 3000'));

