#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
struct TYPE_6__ {size_t row; unsigned int col; size_t i_firstrow; size_t i_lastrow; int /*<<< orphan*/  pen; TYPE_2__** rows; int /*<<< orphan*/  b_defined; } ;
typedef  TYPE_1__ cea708_window_t ;
struct TYPE_7__ {size_t firstcol; size_t lastcol; int /*<<< orphan*/ * styles; int /*<<< orphan*/ * characters; } ;
typedef  TYPE_2__ cea708_text_row_t ;

/* Variables and functions */
 unsigned int CEA708_WINDOW_MAX_COLS ; 
 size_t CEA708_WINDOW_MAX_ROWS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_2__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7( const uint8_t c[4], cea708_window_t *p_w )
{
    if( !p_w->b_defined )
        return;


    if( FUNC6( p_w->row >= CEA708_WINDOW_MAX_ROWS ||
                  p_w->col >= CEA708_WINDOW_MAX_COLS ) )
    {
        FUNC2( p_w->row < CEA708_WINDOW_MAX_ROWS );
        FUNC2( p_w->col < CEA708_WINDOW_MAX_COLS );
        return;
    }

    cea708_text_row_t *p_row = p_w->rows[p_w->row];
    if( !p_row )
    {
        p_w->rows[p_w->row] = p_row = FUNC3();
        if( !p_row )
            return;
        if( p_w->row < p_w->i_firstrow )
            p_w->i_firstrow = p_w->row;
        if( p_w->row > p_w->i_lastrow )
            p_w->i_lastrow = p_w->row;
    }

    FUNC4( &p_row->characters[p_w->col * 4U], c, 4 );
    p_row->styles[p_w->col] = p_w->pen;
    if( p_w->col < p_row->firstcol )
        p_row->firstcol = p_w->col;
    if( p_w->col > p_row->lastcol )
        p_row->lastcol = p_w->col;

    FUNC0( p_w );

    FUNC1(FUNC5("\033[0;33m%s\033[0m", c));
}