% Definindo algumas constantes nomeadas
datashow(ds1).
datashow(ds2).
datashow(ds3).

sala(sala1).
sala(sala2).
sala(sala3).

% Definindo a disponibilidade de datashows como fatos dinâmicos
:- dynamic disponivel/1.
:- dynamic ocupado/1.

% Disponibilidade inicial dos datashows
disponivel(ds1).
disponivel(ds2).
disponivel(ds3).

% Fato que armazena as alocações feitas
alocado(Sala, Datashow) :-
    datashow(Datashow),
    sala(Sala),
    disponivel(Datashow), % Verifica se o datashow está disponível
    retract(disponivel(Datashow)), % Remove o datashow da disponibilidade
    assert(ocupado(Datashow)), % Marca o datashow como ocupado
    format('O datashow ~w foi alocado para a sala ~w.~n', [Datashow, Sala]).

% Verifica se o datashow está disponível
verifica_disponibilidade(Datashow) :-
    (ocupado(Datashow) -> 
        format('O datashow ~w não está disponível.~n', [Datashow]) ;
        format('O datashow ~w está disponível.~n', [Datashow])).

% Método para desalocar o datashow
desalocar(Datashow) :-
    datashow(Datashow),
    ocupado(Datashow), % Verifica se o datashow está ocupado
    retract(ocupado(Datashow)), % Marca o datashow como disponível
    assert(disponivel(Datashow)),
    format('O datashow ~w foi desalocado.~n', [Datashow]).
