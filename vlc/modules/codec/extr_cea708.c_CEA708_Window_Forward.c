
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int print_direction; } ;
struct TYPE_6__ {int row; int col; TYPE_1__ style; } ;
typedef TYPE_2__ cea708_window_t ;






 int CEA708_WINDOW_MAX_COLS ;
 int CEA708_WINDOW_MAX_ROWS ;
 int CEA708_Window_CarriageReturn (TYPE_2__*) ;

__attribute__((used)) static void CEA708_Window_Forward( cea708_window_t *p_w )
{
    switch( p_w->style.print_direction )
    {
        case 130:
            if( p_w->col + 1 < CEA708_WINDOW_MAX_COLS )
                p_w->col++;
            else
                CEA708_Window_CarriageReturn( p_w );
            break;
        case 129:
            if( p_w->col > 0 )
                p_w->col--;
            else
                CEA708_Window_CarriageReturn( p_w );
            break;
        case 128:
            if( p_w->row + 1 < CEA708_WINDOW_MAX_ROWS )
                p_w->row++;
            else
                CEA708_Window_CarriageReturn( p_w );
            break;
        case 131:
            if( p_w->row > 0 )
                p_w->row--;
            else
                CEA708_Window_CarriageReturn( p_w );
            break;
    }
}
