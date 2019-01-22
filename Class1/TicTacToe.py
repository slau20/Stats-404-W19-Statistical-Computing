import copy
import random
import pdb

theBoard = {'top-L': ' ',
            'top-M': ' ',
            'top-R': ' ',
            'mid-L': ' ',
            'mid-M': ' ',
            'mid-R': ' ',
            'low-L': ' ',
            'low-M': ' ',
            'low-R': ' '
            }
print(theBoard)


def print_board(board):
    # This function will print the board as a tic tac toe grid
    print(board['top-L'] + '|' + board['top-M'] + '|' + board['top-R'])
    print('-+-+-')
    print(board['mid-L'] + '|' + board['mid-M'] + '|' + board['mid-R'])
    print('-+-+-')
    print(board['low-L'] + '|' + board['low-M'] + '|' + board['low-R'])


def update_current_board(board, tokens_placed):
    named_locations = list(board.keys())
    locations_with_tokens = list(zip(named_locations, tokens_placed))
    new_board = dict(locations_with_tokens)
    return new_board


def check_horizontal(move_history, player):
    if (move_history[0] == player) & (move_history[1] == player) & (move_history[2] == player):
        win = 1
    elif (move_history[3] == player) & (move_history[4] == player) & (move_history[5] == player):
        win = 1
    elif (move_history[6] == player) & (move_history[7] == player) & (move_history[8] == player):
        win = 1
    else:
        win = 0
    return win


def check_vertical(move_history, player):
    if move_history[0::3] == [player, player, player]:
        win = 1
    elif move_history[1::3] == [player, player, player]:
        win = 1
    elif move_history[2::3] == [player, player, player]:
        win = 1
    else:
        win = 0
    return win


def check_diagonal(move_history, player):
    if (move_history[0] == player) & (move_history[4] == player) & (move_history[8] == player):
        win = 1
    elif (move_history[2] == player) & (move_history[4] == player) & (move_history[6] == player):
        win = 1
    else:
        win = 0
    return win


def is_game_over(move_history, player):
    if check_horizontal(move_history, player):
        game_over = 1
    elif check_vertical(move_history, player):
        game_over = 1
    elif check_diagonal(move_history, player):
        game_over = 1
    else:
        game_over = 0
    return game_over


# Initialize player X as first
turn = 'X'

# Initialize open spaces as all
# Below lists the mapping of spaces to int
# mappings      'top-L' : 0,
#               'top-M' : 1,
#               'top-R' : 2,
#               'mid-L' : 3,
#               'mid-M' : 4,
#               'mid-R' : 5,
#               'low-L' : 6,
#               'low-M' : 7,
#               'low_R' : 8
open_spaces = list(range(0, 9))


# Initialize Tokens placed to 9 spaces
Tokens_Placed = [' ', ' ', ' ',\
                 ' ', ' ', ' ',\
                 ' ', ' ', ' ']

for i in range(9):

    # print whose turn
    print('Turn for ' + turn)

    # get random open space to pick spot
    Place = random.sample(open_spaces, k=1)
    Place = int(Place[0])
    # print(Place) for debugging
    # print(open_spaces) for debugging

    # update current board to include move
    Tokens_Placed[Place] = turn

    # Remove recent move from open spaces
    open_spaces.remove(Place)

    # Map tokens placed back into printable format
    Current_Board = update_current_board(theBoard, Tokens_Placed)

    # Print the current board
    print_board(Current_Board)

    # Check if someone won and break out if true
    if is_game_over(Tokens_Placed, turn):
        print('Player: ' + turn + ' Wins!!!')
        break

    # If no one won by the 9th round declare tie
    if i == 8:
        print('Players Tied')
        break

    # If game not over switch whose turn it is and continue
    if turn == 'X':
        turn = 'O'
    else:
        turn = 'X'
