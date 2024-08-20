const caixaPrincipal = document.querySelector(".caixa-principal");
const caixaPerguntas = document.querySelector(".caixa-perguntas");
const caixaAlternativas = document.querySelector(".caixa-alternativas");
const caixaResultado = document.querySelector(".caixa-resultado");
const textoResultado = document.querySelector(".texto-resultado");

const perguntas = [
    {
        enunciado: "Você é um jovem ninja recém formado na academia de Konoha, seu nome é Viajante. Seu sonho é se tornar um grande ninja, assim como seu ídolo Naruto Uzumaki. Escolha o seu time:" 
        ´alternativas: 
            "Time 7(Companheiros de equipe: Naruto Uzumaki, Sasuke Uchiha e Sakura Haruno. Treinador: Kakashi Hatake)"
            "Time 10(Companheiros de equipe: Ino Yamanaka, Choji Akimichi e Shikamaru Nara. Treinador: Asuma Sarutobi)"                                                                
    ]

    ,
    {
        enunciado: "Time 7: Você se junta ao Time 7. No seu primeiro dia de missção, Kakashi dá a vocês o teste dos guizos. Seu objetivo é pegar um dos guizos de Kakashi para provar que você é digno de ser um ninja." "O que você faz?"
        alternativas: [
            "1: ATACAR DIRETAMENTE!!!: Ataque Kakashi com toda força e sozinho, acreditando na sua habilidade e potencial!!"

            "2: Trabalhe em equipe: Junto com Naruto, Sasuke e Sakura, criem uma estratégia para pegar os guizos."
        ]
    },
    {
        enunciado: "Time 10: Você se junta ao time 10. Sua primeira missão é proteger uma caravana de mercadores que está sendo ameaçada por bandidos. No caminho, vocês são atacados. O que você faz?",
        alternativas: [
            "1: Defender a caravana: Junto com Choji, usando sua força para repelir os bandidos.",
            "2: Criar uma distração: Com a ajuda de Shikamaru e Ino para emboscar os inimigos"
        ]
    },
    {
        enunciado: "Trabalhar em equipe: Você decide atacar Kakashi diretamente ",
        alternativas: [
            "Alternativa 1",
            "Alternativa 2"
        ]
    },
    {
        enunciado: "Pergunta 5",
        alternativas: [
            "Alternativa 1",
            "Alternativa 2"
        ]
    }
];