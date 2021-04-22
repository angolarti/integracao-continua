# Integração continua ou CI

### O que CI

É o processo de integrar modificações do codebase de forma continua e automatizada, eitando assim erros humanos de verificação, garantindo mais agilidade e segurança no processo de desenvolvimento de um software.

### Principais processos

- Execução de teste
- Linter
- verificações de qualidade de código
- Verificações de segurança
- Geração de artefatos prontos para processo de deploy
- Identificação da próxima versão a ser gerada no software
- Geração de tags e releases

### Status check

É a garantia de que um Pull Request não pode ser mergeada ao repositório sem antes ter passado pelo processo de CI ou mesmo no processo de Code Review

### Ferramentas populares

- Jenkins
- Github Actions
- Circle CI
- AWS Code Build
- Azure DevOps
- Google Cloud build
- Gitlab Pipeline / CI

#### Github actions

É um automatizaor de workflo de desenvolvimento e software. Ele utiliza pricncipais eventos gerados pelo Gihub para que possamos executar tarefas dos mais variados tipos, incluido processos de CI.

##### Dinâmica

###### Workflow

- são conjuntos de processos definidos por você. x: Fazer o Build + rodar os teste da aplicação
- É possével ter mais de um workflow por repositório
- Definidos em arquivos ".yml" em: .github/workflow
- possui um ou mais "Jobs"
- É iniciado em eventos do Github ou através de agendamentos

Evento (on: push) --> Filtro (branches: master) --> Ambiente (run-on: ubuntu) --> Acções (steps: [uses: action/run-composer, run: npm run prod])

- uses é quando pegamos uma actions do Github
- actions é umcódigo desenvolvimento por um dev (maketplaces github)
- run você consegue executar um comando na máquina target

###### Actions

É a acção que de facto será executada em um dos Steps de um Job em um Workflow. Ela pode ser criada do zero ou ser reutilizada de actions pre-existentes.

- Action pode ser desenvolvida:
  - Javascript
  - Docker image

###### Quando custa?

repo public free

repo private deve ser usado 2000m/mês

```yml
name: ci-golang-workflow
on: [push]
jobs:
  check-application:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: actions/setup-go@v2
        with:
          go-version: 1.15
      - run: go test
      - run: go run math.go
```
