
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int scroll_direction; int print_direction; } ;
struct TYPE_8__ {TYPE_1__ style; int col; int row; int i_row_count; int i_col_count; } ;
typedef TYPE_2__ cea708_window_t ;






 int CEA708_WINDOW_MAX_COLS ;
 int CEA708_WINDOW_MAX_ROWS ;
 int CEA708_Window_ColCount (TYPE_2__*) ;
 int CEA708_Window_RowCount (TYPE_2__*) ;
 int CEA708_Window_Scroll (TYPE_2__*) ;

__attribute__((used)) static void CEA708_Window_CarriageReturn( cea708_window_t *p_w )
{
    switch( p_w->style.scroll_direction )
    {
        case 130:
            if( p_w->col > 0 &&
                CEA708_Window_ColCount( p_w ) < p_w->i_col_count )
                p_w->col--;
            else
                CEA708_Window_Scroll( p_w );
            p_w->row = (p_w->style.print_direction == 128) ?
                       0 : CEA708_WINDOW_MAX_ROWS - 1;
            break;
        case 129:
            if( p_w->col + 1 < CEA708_WINDOW_MAX_COLS &&
                CEA708_Window_ColCount( p_w ) < p_w->i_col_count )
                p_w->col++;
            else
                CEA708_Window_Scroll( p_w );
            p_w->row = (p_w->style.print_direction == 128) ?
                       0 : CEA708_WINDOW_MAX_ROWS - 1;
            break;
        case 128:
            if( p_w->row > 0 &&
                CEA708_Window_RowCount( p_w ) < p_w->i_row_count )
                p_w->row--;
            else
                CEA708_Window_Scroll( p_w );
            p_w->col = (p_w->style.print_direction == 130) ?
                       0 : CEA708_WINDOW_MAX_COLS - 1;
            break;
        case 131:
            if( p_w->row + 1 < p_w->i_row_count )
                p_w->row++;
            else
                CEA708_Window_Scroll( p_w );
            p_w->col = (p_w->style.print_direction == 130) ?
                       0 : CEA708_WINDOW_MAX_COLS - 1;
            break;
    }
}
