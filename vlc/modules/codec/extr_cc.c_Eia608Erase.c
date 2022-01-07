
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int i_row; int i_column; } ;
struct TYPE_8__ {scalar_t__ mode; TYPE_3__* screen; TYPE_1__ cursor; } ;
typedef TYPE_2__ eia608_t ;
struct TYPE_9__ {char** characters; } ;
typedef TYPE_3__ eia608_screen ;


 scalar_t__ EIA608_MODE_TEXT ;
 int Eia608Cursor (TYPE_2__*,int) ;
 size_t Eia608GetWritingScreenIndex (TYPE_2__*) ;

__attribute__((used)) static void Eia608Erase( eia608_t *h )
{
    const int i_row = h->cursor.i_row;
    const int i_column = h->cursor.i_column - 1;
    eia608_screen *screen;

    if( h->mode == EIA608_MODE_TEXT )
        return;
    if( i_column < 0 )
        return;

    screen = &h->screen[Eia608GetWritingScreenIndex( h )];


    screen->characters[i_row][i_column] = ' ';
    Eia608Cursor( h, -1 );
}
