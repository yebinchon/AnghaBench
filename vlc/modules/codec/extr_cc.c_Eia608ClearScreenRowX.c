
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* screen; } ;
typedef TYPE_1__ eia608_t ;
struct TYPE_5__ {int* row_used; char** characters; scalar_t__** colors; scalar_t__** fonts; } ;
typedef TYPE_2__ eia608_screen ;


 scalar_t__ EIA608_COLOR_DEFAULT ;
 scalar_t__ EIA608_FONT_REGULAR ;
 int EIA608_SCREEN_COLUMNS ;

__attribute__((used)) static void Eia608ClearScreenRowX( eia608_t *h, int i_screen, int i_row, int x )
{
    eia608_screen *screen = &h->screen[i_screen];

    if( x == 0 )
    {
        screen->row_used[i_row] = 0;
    }
    else
    {
        screen->row_used[i_row] = 0;
        for( int i = 0; i < x; i++ )
        {
            if( screen->characters[i_row][i] != ' ' ||
                screen->colors[i_row][i] != EIA608_COLOR_DEFAULT ||
                screen->fonts[i_row][i] != EIA608_FONT_REGULAR )
            {
                screen->row_used[i_row] = 1;
                break;
            }
        }
    }

    for( ; x < EIA608_SCREEN_COLUMNS+1; x++ )
    {
        screen->characters[i_row][x] = x < EIA608_SCREEN_COLUMNS ? ' ' : '\0';
        screen->colors[i_row][x] = EIA608_COLOR_DEFAULT;
        screen->fonts[i_row][x] = EIA608_FONT_REGULAR;
    }
}
