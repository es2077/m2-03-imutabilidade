/**
 * Imutabilidade
 * - O que é?
 * - Vantagens
 * - ReScript e React trabalham muito bem com imutabilidade
 * - Imutável por padrão
 * - Imutabilidade em let bindings
 * - Imutabilidade e mutabilidade em records
 * - Imutabilidade em arrays
 * - Mutabilidade tem seu espaço
 */

type person = {
  id: int,
  name: string,
  age: int,
}

let people = [
  {
    id: 0,
    name: "Alonzo",
    age: 32,
  },
  {
    id: 1,
    name: "Turing",
    age: 32,
  },
]

let people2 = people->Js.Array2.map(person => {
  if person.id == 0 {
    {
      ...person,
      name: `${person.name} Church`,
    }
  } else {
    person
  }
})

@react.component
let make = () => {
  <div className="main-container">
    <h1> {`Hello from ReScript and Vite 😄`->React.string} </h1>
  </div>
}
