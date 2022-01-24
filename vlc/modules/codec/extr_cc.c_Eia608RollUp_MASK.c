#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int i_row; scalar_t__ i_column; } ;
struct TYPE_8__ {scalar_t__ mode; TYPE_1__ cursor; TYPE_3__* screen; } ;
typedef  TYPE_2__ eia608_t ;
struct TYPE_9__ {int /*<<< orphan*/ * row_used; int /*<<< orphan*/ * fonts; int /*<<< orphan*/ * colors; int /*<<< orphan*/ * characters; } ;
typedef  TYPE_3__ eia608_screen ;

/* Variables and functions */
 scalar_t__ EIA608_MODE_ROLLUP_2 ; 
 scalar_t__ EIA608_MODE_ROLLUP_3 ; 
 scalar_t__ EIA608_MODE_ROLLUP_4 ; 
 scalar_t__ EIA608_MODE_TEXT ; 
 int const EIA608_SCREEN_ROWS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int const,int) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4( eia608_t *h )
{
    if( h->mode == EIA608_MODE_TEXT )
        return;

    const int i_screen = FUNC1( h );
    eia608_screen *screen = &h->screen[i_screen];

    int keep_lines;

    /* Window size */
    if( h->mode == EIA608_MODE_ROLLUP_2 )
        keep_lines = 2;
    else if( h->mode == EIA608_MODE_ROLLUP_3 )
        keep_lines = 3;
    else if( h->mode == EIA608_MODE_ROLLUP_4 )
        keep_lines = 4;
    else
        return;

    /* Reset the cursor */
    h->cursor.i_column = 0;

    /* Erase lines above our window */
    for( int i = 0; i < h->cursor.i_row - keep_lines; i++ )
        FUNC0( h, i_screen, i );

    /* Move up */
    for( int i = 0; i < keep_lines-1; i++ )
    {
        const int i_row = h->cursor.i_row - keep_lines + i + 1;
        if( i_row < 0 )
            continue;
        FUNC2( i_row+1 < EIA608_SCREEN_ROWS );
        FUNC3( screen->characters[i_row], screen->characters[i_row+1], sizeof(*screen->characters) );
        FUNC3( screen->colors[i_row], screen->colors[i_row+1], sizeof(*screen->colors) );
        FUNC3( screen->fonts[i_row], screen->fonts[i_row+1], sizeof(*screen->fonts) );
        screen->row_used[i_row] = screen->row_used[i_row+1];
    }
    /* Reset current row */
    FUNC0( h, i_screen, h->cursor.i_row );
}