##**Smalltalk - Orientação a Objetos com Smalltalk**
## Assista à Aula

Para assistir à aula completa sobre este projeto, acesse o link abaixo:

[Assista à Aula no YouTube](https://www.youtube.com/watch?v=CfCTbi7ShOI)

Este repositório contém um exemplo de implementação de conceitos de orientação a objetos usando a linguagem Smalltalk. O projeto demonstra a criação de classes, herança, polimorfismo e encapsulamento por meio das classes `Animal`, `Cachorro` e `Gato`.

### **Descrição do Projeto**

O projeto ilustra os princípios da programação orientada a objetos utilizando Smalltalk, uma das primeiras linguagens a implementar o paradigma de forma pura. O código inclui:
- Uma classe `Animal` que serve como classe base.
- Duas subclasses `Cachorro` e `Gato` que herdam de `Animal`.
- Métodos que demonstram o uso de herança, polimorfismo e encapsulamento.

### **Como Rodar o Código**

1. Certifique-se de que você tem o **GNU Smalltalk** instalado no seu sistema.
   - No Linux: `sudo apt-get install gnu-smalltalk`
   - No macOS (usando Homebrew): `brew install gnu-smalltalk`
   - No Windows: Baixe e instale a partir do [site oficial do GNU Smalltalk](http://smalltalk.gnu.org/download).

2. Clone este repositório e navegue até o diretório do projeto:
   ```bash
   git clone https://github.com/joseguilhermev/smalltalk
   cd smalltalk
   ```

3. Para rodar o código Smalltalk, execute o seguinte comando:
   ```bash
   gst smalltalk.st
   ```

### **Estrutura do Projeto**

O código contém as seguintes classes e métodos:

- **Animal**
  - Métodos: `inicializarNome:idade:cor:`, `descrever`, `falar`, `envelhecer`, `comer:`
  - Método de Classe: `criarGenerico`

- **Cachorro** (subclasse de `Animal`)
  - Métodos: `falar`, `buscarBola`, `sentar`
  - Método de Classe: `criarCachorro:idade:cor:`

- **Gato** (subclasse de `Animal`)
  - Métodos: `falar`, `arranhar`, `brincarCom:`

### **Principais Conceitos Demonstrados**

- **Herança:** `Cachorro` e `Gato` herdam de `Animal`.
- **Polimorfismo:** O método `falar` é redefinido em `Cachorro` e `Gato`.
- **Encapsulamento:** Os atributos `nome`, `idade`, e `cor` são manipulados apenas por meio de métodos.
