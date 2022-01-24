#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int scroll_direction; int print_direction; } ;
struct TYPE_8__ {TYPE_1__ style; int /*<<< orphan*/  col; int /*<<< orphan*/  row; int /*<<< orphan*/  i_row_count; int /*<<< orphan*/  i_col_count; } ;
typedef  TYPE_2__ cea708_window_t ;

/* Variables and functions */
#define  CEA708_WA_DIRECTION_BT 131 
#define  CEA708_WA_DIRECTION_LTR 130 
#define  CEA708_WA_DIRECTION_RTL 129 
#define  CEA708_WA_DIRECTION_TB 128 
 int /*<<< orphan*/  CEA708_WINDOW_MAX_COLS ; 
 int /*<<< orphan*/  CEA708_WINDOW_MAX_ROWS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC3( cea708_window_t *p_w )
{
    switch( p_w->style.scroll_direction )
    {
        case CEA708_WA_DIRECTION_LTR:
            if( p_w->col > 0 &&
                FUNC0( p_w ) < p_w->i_col_count )
                p_w->col--;
            else
                FUNC2( p_w );
            p_w->row = (p_w->style.print_direction == CEA708_WA_DIRECTION_TB) ?
                       0 : CEA708_WINDOW_MAX_ROWS - 1;
            break;
        case CEA708_WA_DIRECTION_RTL:
            if( p_w->col + 1 < CEA708_WINDOW_MAX_COLS &&
                FUNC0( p_w ) < p_w->i_col_count )
                p_w->col++;
            else
                FUNC2( p_w );
            p_w->row = (p_w->style.print_direction == CEA708_WA_DIRECTION_TB) ?
                       0 : CEA708_WINDOW_MAX_ROWS - 1;
            break;
        case CEA708_WA_DIRECTION_TB:
            if( p_w->row > 0 &&
                FUNC1( p_w ) < p_w->i_row_count )
                p_w->row--;
            else
                FUNC2( p_w );
            p_w->col = (p_w->style.print_direction == CEA708_WA_DIRECTION_LTR) ?
                       0 : CEA708_WINDOW_MAX_COLS - 1;
            break;
        case CEA708_WA_DIRECTION_BT:
            if( p_w->row + 1 < p_w->i_row_count )
                p_w->row++;
            else
                FUNC2( p_w );
            p_w->col = (p_w->style.print_direction == CEA708_WA_DIRECTION_LTR) ?
                       0 : CEA708_WINDOW_MAX_COLS - 1;
            break;
    }
}