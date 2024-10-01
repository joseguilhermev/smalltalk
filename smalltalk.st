Object subclass: Animal [
    | nome idade cor |

    Animal >> inicializarNome: umNome idade: umaIdade cor: umaCor [
        nome := umNome.
        idade := umaIdade.
        cor := umaCor.
    ]

    Animal >> descrever [
        ^ 'Nome: ', nome, ', Idade: ', idade asString, ', Cor: ', cor.
    ]

    Animal >> falar [
        ^ 'O animal faz um som.'
    ]

    Animal >> envelhecer [
        idade := idade + 1.
    ]

    Animal >> comer: comida [
        ^ nome, ' está comendo ', comida, '.'
    ]

    "Método de classe para criar um animal genérico"
    Animal class >> criarGenerico [
        | animalGen |
        animalGen := self new.
        animalGen inicializarNome: 'Genérico' idade: 0 cor: 'Desconhecida'.
        ^ animalGen
    ]
]

Animal subclass: Cachorro [

    Cachorro >> falar [
        ^ 'O cachorro late.'
    ]

    Cachorro >> buscarBola [
        ^ 'O cachorro corre atrás da bola!'
    ]

    "Método para ensinar o cachorro a sentar"
    Cachorro >> sentar [
        ^ 'O cachorro sentou.'
    ]

    "Método de classe para criar um cachorro específico"
    Cachorro class >> criarCachorro: nome idade: idade cor: cor [
        | novoCachorro |
        novoCachorro := self new.
        novoCachorro inicializarNome: nome idade: idade cor: cor.
        ^ novoCachorro
    ]
]

Animal subclass: Gato [

    Gato >> falar [
        ^ 'O gato mia.'
    ]

    Gato >> arranhar [
        ^ 'O gato está arranhando o sofá!'
    ]

    "Método para ensinar o gato a brincar com um brinquedo"
    Gato >> brincarCom: brinquedo [
        ^ 'O gato está brincando com ', brinquedo, '.'
    ]
]

| mCachorro meuGato outroAnimal animalGenerico |

"Criando um cachorro usando o novo método de classe"
mCachorro := Cachorro criarCachorro: 'Rex' idade: 5 cor: 'Marrom'.
Transcript show: 'Descrição do cachorro: ', mCachorro descrever; cr.
Transcript show: 'O cachorro fala: ', mCachorro falar; cr. 
Transcript show: mCachorro buscarBola; cr.
Transcript show: mCachorro sentar; cr.
Transcript show: (mCachorro comer: 'ração'); cr.

"Criando um gato e usando seus métodos"
meuGato := Gato new.
meuGato inicializarNome: 'Mimi' idade: 3 cor: 'Preto'.
Transcript show: 'Descrição do gato: ', meuGato descrever; cr.
Transcript show: 'O gato fala: ', meuGato falar; cr.
Transcript show: meuGato arranhar; cr.
Transcript show: (meuGato brincarCom: 'bola de lã'); cr.
Transcript show: (meuGato comer: 'peixe'); cr.

"Envelhecendo o cachorro e o gato"
mCachorro envelhecer.
meuGato envelhecer.
Transcript show: 'Depois de um ano:'; cr.
Transcript show: 'Descrição do cachorro: ', mCachorro descrever; cr.
Transcript show: 'Descrição do gato: ', meuGato descrever; cr.

"Criando um animal genérico usando o método de classe"
animalGenerico := Animal criarGenerico.
Transcript show: 'Descrição do animal genérico: ', animalGenerico descrever; cr. 
Transcript cr.
Transcript show: animalGenerico falar; cr.
