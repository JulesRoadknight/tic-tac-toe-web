# Tic-Tac-Toe Web

A Tic-Tac-Toe game that runs on a webpage. Communicates with a JSON backend.

## Installation

- Download to your target folder
- In `tic-tac-toe-frontend`, run `yarn install`
- In `tic_tac_toe_logic`, run `bundle install`
- In `sinatra_server`, run `gem install tictactoe_logic-1.2.1.gem`, `npm install` and `bundle install`

## Starting the Server

- In `sinatra_server`, run `shotgun config.ru -p 4567`

## Running the React App

- For best results, start the server first
- In `tic-tac-toe-frontend`, run `yarn start`

## Running tests

- NOTE: Only run one suite of Cypress tests at a time
- In `tic-tac-toe-frontend` run `npx cypress open-ct`
- In  `sinatra_server` run `npx cypress open`
- In `tic_tac_toe_logic` run `rspec`

## Project Todos

- REACT Unblock submitting moves to server - investigate sessions/cookies
- REACT (When on Submit Move ticket) Add input validation
- SERVER Add dynamic session secret
- SERVER Use test db
- SERVER Decouple database
- SERVER Add ENV
- LOGIC Replace hard-coded diagonal victory checks
- LOGIC Investigate draw display issue
- LOGIC Rewind repo to logic used in current Gem (1.2.1)
