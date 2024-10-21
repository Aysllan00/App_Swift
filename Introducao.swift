var str = "Hello, world"
//print(str)


var nome = "Ayslan"
var idade = 24
var peso: Int = 80

//print("\(nome) - \(idade)")
//print(type(of: nome))

//Double, Bool, Character, String, Int, Float, Array, Dictionary, Set, Tuple, Optional, Void

//Constante
let pi = 3.14

typealias Apelido = String
var apelido: Apelido = "Ayslan"

var valor = 10
valor += 1
valor -= 1

//-------------------------------------------------
//1.1
var nota1 = 48
var nota2 = 90
var nota3 = 100
var media = (nota1 + nota2 + nota3) / 3
print(media)
print("----------")

//-------------------------------------------------
//1.2
//var celsius = Double(readLine()!)!
var celsius = 30.0
var fahrenheit = (celsius * 1.8) + 32

print("Em Celsius: \(celsius), a temperatura em Fahrenheit é: \(fahrenheit)")
print("----------")

//-------------------------------------------------
//2.1
//let idadePessoa = Int(readLine()!)!
let idadePessoa = 19
if (idadePessoa>=0 && idadePessoa < 13){
  print("Criança")
}
else if(idadePessoa>=13 && idadePessoa < 18){
  print("Adolescente")
}
else{
  print("Adulto")
}
print("----------")

//-------------------------------------------------
//2.2
let RG = true
idadePessoa > 18 && RG ? print("Pode entrar" ) : print("Não pode entrar")
print("----------")

//-------------------------------------------------
//3.1
var num = 0
while(num <= 10){
  num += 1
  if(num % 2 == 0){
    print(num)
  }
}
print("----------")

//-------------------------------------------------
//3.2
//var valorInteiro = Int.random(in: 1...100)
var valorInteiro = 1
var valorUser: Int = 1
var tentativas = 0
//print(valorInteiro)
print("Tente adivinhar o número (entre 1 e 100):")

while(valorUser != valorInteiro){
  tentativas += 1
  //valorUser = Int(readLine()!)!

  switch valorUser {
  case _ where valorUser > valorInteiro: 
    print("Chutou alto")
  case _ where valorUser < valorInteiro: 
    print("Chutou baixo")
  case _ where valorUser == valorInteiro: 
    print("Aceitou")
    print("Número de tentativas: \(tentativas)")
  default: break
  }
}
print("----------")

//-------------------------------------------------
//4.1
func isPrimo(num: Int) -> Bool{
if num < 2 {
  return false
}
for i in 2..<num {
  if num % i == 0 {
      return false
  }
}

return true
}
var number: Int = 1

if isPrimo(num: number) {
  print("\(number) é primo")
} else {
  print("\(number) não é primo")
}
print("----------")
//-------------------------------------------------
//4.2
func pagar(nV total: Double, nP pessoas: Int) ->  Double {
  if(pessoas == 0){
    return 0
  }
  let dividirConta = total*1.1/Double(pessoas)
  return dividirConta
}
print("Cada pessoa deve pagar: \(pagar(nV: 18.2, nP: 3))")

print("----------")
//-------------------------------------------------
//5.1

func verificarNome(nome: String?) -> String{
  guard let nome = nome
   else {return "Nome não especificado"}
   return nome + " é um nome válido"
}

print(verificarNome(nome: nil))
print(verificarNome(nome: "Ayslan"))

print("----------")
//-------------------------------------------------
//6.1
func calcularMedia(notas: [Double]) -> Double {
    var soma = 0.0
    for nota in notas {
        soma += nota
    }
    let media = soma / Double(notas.count)

    return media
}
let notasAluno = [7.0, 8.5, 6.0, 9.0]
let m = calcularMedia(notas: notasAluno)
print("A média das notas é \(m)")

print("----------")
//-------------------------------------------------
//6.2
var pares: Set<Int> = []
var impares: Set<Int> = []
var numeros: [Int] = [] 

for _ in 1..<10 {
  numeros.append(Int.random(in: 1...100))
}
print(numeros)

for numero in numeros {
    if numero % 2 == 0 {
        pares.insert(numero)
    } else {
        impares.insert(numero)
    }
}

print("Números pares: \(pares)")
print("Números ímpares: \(impares)")


print("----------")
//-------------------------------------------------
//6.3
let estados: [String: String] = [
    "MG": "Minas Gerais",
    "SP": "São Paulo",
    "RJ": "Rio de Janeiro",
    "BA": "Bahia",
    "PR": "Paraná",
    "RS": "Rio Grande do Sul",
    "SC": "Santa Catarina",
    "CE": "Ceará",
    "PE": "Pernambuco",
    "MA": "Maranhão"
]

func exibirEstadosLongos(estados: [String: String]) {
    for (sigla, nome) in estados {
        if nome.count > 7 {
            print("\(sigla): \(nome)")
        }
    }
}

exibirEstadosLongos(estados: estados)


print("----------")
//-------------------------------------------------
//8.1
class Calculadora{
  var num1: Double
  var num2: Double

  init(num1: Double, num2: Double){
    self.num1 = num1
    self.num2 = num2
  }

  func somar() -> Double {
      return num1 + num2
  }

  func subtrair() -> Double {
      return num1 - num2
  }

  func multiplicar() -> Double {
      return num1 * num2
  }

  func dividir() -> Double? {
      if num2 != 0 {
          return num1 / num2
      } else {
          print("Erro: Divisão por zero não é permitida.")
          return nil
      }
  }
}

let calculadora = Calculadora(num1: 10.0, num2: 5.0)

print("Soma: \(calculadora.somar())")              
print("Subtração: \(calculadora.subtrair())")      
print("Multiplicação: \(calculadora.multiplicar())")
if let resultadoDivisao = calculadora.dividir() {
    print("Divisão: \(resultadoDivisao)")         
}

print("----------")
//-------------------------------------------------
//8.2
class Restaurante {
  var nome: String
  var tipoDeComida: String
  var numeroDePedidos: Int

  init(nome: String, tipoDeComida: String) {
      self.nome = nome
      self.tipoDeComida = tipoDeComida
      self.numeroDePedidos = 0 
  }

  func receberPedido() {
      numeroDePedidos += 1
  }

  func calculaTotalPedidos() -> Double {
      let valorPorPedido = 35.00
      return Double(numeroDePedidos) * valorPorPedido
  }
}

let restaurante = Restaurante(nome: "Pizzaria KiSabor", tipoDeComida: "Pizza 4 queijos")

restaurante.receberPedido()
restaurante.receberPedido()

print("Número de pedidos: \(restaurante.numeroDePedidos)")
print("Total em pedidos: R$ \(restaurante.calculaTotalPedidos())")

print("----------")
//-------------------------------------------------
//8.3
class Retangulo {
  var base: Double
  var altura: Double

  init(base: Double, altura: Double) {
      self.base = base
      self.altura = altura
  }

  func calcularArea() -> Double {
      return base * altura
  }

  func calcularPerimetro() -> Double {
      return 2 * (base + altura)
  }
}

let retangulo = Retangulo(base: 5.0, altura: 3.0)

print("Área do retângulo: \(retangulo.calcularArea())")    
print("Perímetro do retângulo: \(retangulo.calcularPerimetro())")

print("----------")
//-------------------------------------------------
//8.4
class Empregado {
    var nome: String
    var salario: Double

    init(nome: String, salario: Double) {
        self.nome = nome
        self.salario = salario
    }

    func exibirInformacoes() {
        print("Nome: \(nome), Salário: R$\(salario)")
    }
}

class Gerente: Empregado {
    var departamento: String

    init(nome: String, salario: Double, departamento: String) {
        self.departamento = departamento
        super.init(nome: nome, salario: salario)
    }

    override func exibirInformacoes() {
        print("Nome: \(nome), Salário: R$\(salario), Departamento: \(departamento)")
    }
}

let empregado = Empregado(nome: "Carlos", salario: 3000.0)
empregado.exibirInformacoes() 

let gerente = Gerente(nome: "Ana", salario: 5000.0, departamento: "Financeiro")
gerente.exibirInformacoes()

print("----------")
//-------------------------------------------------
//8.5

class Vendedor: Empregado {

  override init(nome: String, salario: Double) {
      super.init(nome: nome, salario: salario)
  }

  func percentualComissao(numeroDeVendas: Int) -> Double {
      let valorPorVenda = 50.0
      let comissaoPorVenda = valorPorVenda * 0.10
      let totalComissao = comissaoPorVenda * Double(numeroDeVendas)

      return salario + totalComissao
  }

  override func exibirInformacoes() {
      print("Nome: \(nome), Salário Base: R$\(salario)")
  }
}

let vendedor = Vendedor(nome: "João", salario: 2000.0)
vendedor.exibirInformacoes()
print("Salário final com comissão: R$\(vendedor.percentualComissao(numeroDeVendas: 30))")