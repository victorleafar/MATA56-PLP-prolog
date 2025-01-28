# Sistema de Alocação de Datashows

Este sistema permite gerenciar a alocação de datashows para salas, verificando sua disponibilidade, alocando e desalocando conforme necessário.

## Funcionalidades

- Verificar disponibilidade de datashows.
- Alocar datashows para salas.
- Desalocar datashows.

## Requisitos

- **SWI-Prolog** ou **SWISH Prolog** (opcional, versão online).

## Como Usar

1. **Verificar a disponibilidade** de um datashow:
   ```prolog
   ?- verifica_disponibilidade(ds1).
   ?- alocado(sala1, ds1).
   ?- desalocar(ds1).

2. **Exemplo de fluxo completo** de um datashow:
  ```prolog
   % Verificar disponibilidade antes da alocação
   ?- verifica_disponibilidade(ds1).
   O datashow ds1 está disponível.

   % Alocar o datashow
   ?- alocado(sala1, ds1).
   O datashow ds1 foi alocado para a sala sala1.

   % Verificar disponibilidade após a alocação
   ?- verifica_disponibilidade(ds1).
   O datashow ds1 não está disponível.

   % Desalocar o datashow
   ?- desalocar(ds1).
   O datashow ds1 foi desalocado.
