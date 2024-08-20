const canvas = document.getElementById('gameCanvas');
const ctx = canvas.getContext('2d');

const narutoSize = 50;
const itemSize = 20;

let naruto = {
    x: canvas.width / 2 - narutoSize / 2,
    y: canvas.height / 2 - narutoSize / 2,
    speed: 5
};

let item = {
    x: Math.random() * (canvas.width - itemSize),
    y: Math.random() * (canvas.height - itemSize)
};

let score = 0;

// Função para desenhar o Naruto
function drawNaruto() {
    ctx.fillStyle = 'orange';
    ctx.fillRect(naruto.x, naruto.y, narutoSize, narutoSize);
}

// Função para desenhar o item
function drawItem() {
    ctx.fillStyle = 'black';
    ctx.fillRect(item.x, item.y, itemSize, itemSize);
}

// Função para desenhar o texto de pontuação
function drawScore() {
    ctx.fillStyle = 'black';
    ctx.font = '24px Arial';
    ctx.fillText(`Score: ${score}`, 10, 30);
}

// Função para atualizar a posição do Naruto e verificar colisões
function update() {
    if (keys['ArrowLeft']) naruto.x -= naruto.speed;
    if (keys['ArrowRight']) naruto.x += naruto.speed;
    if (keys['ArrowUp']) naruto.y -= naruto.speed;
    if (keys['ArrowDown']) naruto.y += naruto.speed;

    // Verifica colisão com a borda da tela
    if (naruto.x < 0) naruto.x = 0;
    if (naruto.x > canvas.width - narutoSize) naruto.x = canvas.width - narutoSize;
    if (naruto.y < 0) naruto.y = 0;
    if (naruto.y > canvas.height - narutoSize) naruto.y = canvas.height - narutoSize;

    // Verifica colisão com o item
    if (naruto.x < item.x + itemSize &&
        naruto.x + narutoSize > item.x &&
        naruto.y < item.y + itemSize &&
        naruto.y + narutoSize > item.y) {
        score++;
        item.x = Math.random() * (canvas.width - itemSize);
        item.y = Math.random() * (canvas.height - itemSize);
    }
}

// Função para limpar a tela e redesenhar o conteúdo
function draw() {
    ctx.clearRect(0, 0, canvas.width, canvas.height);
    drawNaruto();
    drawItem();
    drawScore();
}

// Função principal do jogo
function gameLoop() {
    update();
    draw();
    requestAnimationFrame(gameLoop);
}

// Controle das teclas pressionadas
let keys = {};
window.addEventListener('keydown', (e) => {
    keys[e.key] = true;
});
window.addEventListener('keyup', (e) => {
    keys[e.key] = false;
});

// Inicia o jogo
gameLoop();
