#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int WPARAM ;
struct TYPE_6__ {scalar_t__ nActiveChildren; scalar_t__ hwndChildMaximized; } ;
struct TYPE_5__ {int bottom; int top; int right; } ;
typedef  TYPE_1__ RECT ;
typedef  TYPE_2__ MDICLIENTINFO ;
typedef  int LONG ;
typedef  scalar_t__ HWND ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  GWL_STYLE ; 
 int /*<<< orphan*/  GW_OWNER ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int MDITILE_HORIZONTAL ; 
 int MDITILE_SKIPDISABLED ; 
 int /*<<< orphan*/  SM_CYICON ; 
 int /*<<< orphan*/  SM_CYICONSPACING ; 
 int SWP_DRAWFRAME ; 
 int SWP_NOACTIVATE ; 
 int SWP_NOSIZE ; 
 int SWP_NOZORDER ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 scalar_t__ TRUE ; 
 scalar_t__* FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  WM_MDIRESTORE ; 
 int WS_SIZEBOX ; 

__attribute__((used)) static void FUNC14( HWND client, MDICLIENTINFO *ci, WPARAM wParam )
{
    HWND *win_array;
    int i, total, rows, columns;
    BOOL has_icons = FALSE;

    if (ci->hwndChildMaximized)
        FUNC10(client, WM_MDIRESTORE, (WPARAM)ci->hwndChildMaximized, 0);

    if (ci->nActiveChildren == 0) return;

    if (!(win_array = FUNC13( client ))) return;

    /* remove all the windows we don't want */
    for (i = total = rows = 0; win_array[i]; i++)
    {
        if (!FUNC9( win_array[i] )) continue;
        if (FUNC4( win_array[i], GW_OWNER )) continue; /* skip owned windows (icon titles) */
        if (FUNC7( win_array[i] ))
        {
            has_icons = TRUE;
            continue;
        }
        if ((wParam & MDITILE_SKIPDISABLED) && !FUNC8( win_array[i] )) continue;
        if(total == (rows * (rows + 2))) rows++; /* total+1 == (rows+1)*(rows+1) */
        win_array[total++] = win_array[i];
    }
    win_array[total] = 0;

    FUNC12("%u windows to tile\n", total);

    if (total)
    {
        HWND *pWnd = win_array;
        RECT rect;
        int x, y, xsize, ysize;
        int r, c, i;

        FUNC1(client,&rect);
        columns = total/rows;
        //while(total < rows*columns) rows++;

        if( wParam & MDITILE_HORIZONTAL )  /* version >= 3.1 */
        {
            i = rows;
            rows = columns;  /* exchange r and c */
            columns = i;
        }

        if (has_icons)
        {
            y = rect.bottom - 2 * FUNC3(SM_CYICONSPACING) - FUNC3(SM_CYICON);
            rect.bottom = ( y - FUNC3(SM_CYICON) < rect.top )? rect.bottom: y;
        }

        ysize   = rect.bottom / rows;
        xsize   = rect.right  / columns;

        for (x = i = 0, c = 1; c <= columns && *pWnd; c++)
        {
            if (c == columns)
            {
                rows  = total - i;
                ysize = rect.bottom / rows;
            }

            y = 0;
            for (r = 1; r <= rows && *pWnd; r++, i++)
            {
                LONG posOptions = SWP_DRAWFRAME | SWP_NOACTIVATE | SWP_NOZORDER;
                LONG style = FUNC5(win_array[i], GWL_STYLE);
                if (!(style & WS_SIZEBOX)) posOptions |= SWP_NOSIZE;

                FUNC11(*pWnd, 0, x, y, xsize, ysize, posOptions);
                y += ysize;
                pWnd++;
            }
            x += xsize;
        }
    }
    FUNC6( FUNC2(), 0, win_array );
    if (has_icons) FUNC0( client );
}