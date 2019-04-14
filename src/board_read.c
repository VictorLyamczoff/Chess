#include "board.h"
#include "board_print.h"
#include "board_print_plain.h"
#include "board_read.h"
#include <stdio.h>
#include <stdlib.h>
void input(char move[5], int moveint[4])
{
    moveint[0] = move[0] - 'a' + 1;
    moveint[1] = move[1] - '0';
    moveint[2] = move[2] - 'a' + 1;
    moveint[3] = move[3] - '0';
}
