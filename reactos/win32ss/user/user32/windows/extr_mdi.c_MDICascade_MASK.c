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
typedef  int /*<<< orphan*/  WPARAM ;
struct TYPE_6__ {scalar_t__ nActiveChildren; scalar_t__ hwndChildMaximized; } ;
struct TYPE_5__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ POINT ;
typedef  TYPE_2__ MDICLIENTINFO ;
typedef  int LONG ;
typedef  size_t INT ;
typedef  scalar_t__ HWND ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  GWL_STYLE ; 
 int /*<<< orphan*/  GW_OWNER ; 
 int /*<<< orphan*/  FUNC1 () ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,TYPE_1__*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SM_CYICON ; 
 int /*<<< orphan*/  SM_CYICONSPACING ; 
 int SWP_DRAWFRAME ; 
 int SWP_NOACTIVATE ; 
 int SWP_NOSIZE ; 
 int SWP_NOZORDER ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 scalar_t__* FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  WM_MDIRESTORE ; 
 int WS_SIZEBOX ; 

__attribute__((used)) static LONG FUNC13( HWND client, MDICLIENTINFO *ci )
{
    HWND *win_array;
    BOOL has_icons = FALSE;
    int i, total;

    if (ci->hwndChildMaximized)
        FUNC9(client, WM_MDIRESTORE, (WPARAM)ci->hwndChildMaximized, 0);

    if (ci->nActiveChildren == 0) return 0;

    if (!(win_array = FUNC12( client ))) return 0;

    /* remove all the windows we don't want */
    for (i = total = 0; win_array[i]; i++)
    {
        if (!FUNC7( win_array[i] )) continue;
        if (FUNC3( win_array[i], GW_OWNER )) continue; /* skip owned windows */
        if (FUNC6( win_array[i] ))
        {
            has_icons = TRUE;
            continue;
        }
        win_array[total++] = win_array[i];
    }
    win_array[total] = 0;

    if (total)
    {
        INT delta = 0, n = 0, i;
        POINT pos[2];
        if (has_icons) delta = FUNC2(SM_CYICONSPACING) + FUNC2(SM_CYICON);

        /* walk the list (backwards) and move windows */
        for (i = total - 1; i >= 0; i--)
        {
            LONG style;
            LONG posOptions = SWP_DRAWFRAME | SWP_NOACTIVATE | SWP_NOZORDER;

            FUNC8(client, n++, pos, delta, NULL);
            FUNC11("move %p to (%ld,%ld) size [%ld,%ld]\n",
                  win_array[i], pos[0].x, pos[0].y, pos[1].x, pos[1].y);
            style = FUNC4(win_array[i], GWL_STYLE);

            if (!(style & WS_SIZEBOX)) posOptions |= SWP_NOSIZE;
            FUNC10( win_array[i], 0, pos[0].x, pos[0].y, pos[1].x, pos[1].y,
                           posOptions);
        }
    }
    FUNC5( FUNC1(), 0, win_array );

    if (has_icons) FUNC0( client );
    return 0;
}