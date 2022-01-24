#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_4__ {scalar_t__ hFrameMenu; scalar_t__ hWindowMenu; scalar_t__ hwndChildMaximized; scalar_t__ nActiveChildren; int /*<<< orphan*/  hBmpClose; } ;
typedef  TYPE_1__ MDICLIENTINFO ;
typedef  long LRESULT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HMENU ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static LRESULT FUNC9( HWND hwnd, HMENU hmenuFrame,
                           HMENU hmenuWindow)
{
    MDICLIENTINFO *ci;
    HWND hwndFrame = FUNC0(hwnd);

    FUNC6("%p, frame menu %p, window menu %p\n", hwnd, hmenuFrame, hmenuWindow);

    if (hmenuFrame && !FUNC1(hmenuFrame))
    {
	FUNC7("hmenuFrame is not a menu handle\n");
	return 0L;
    }

    if (hmenuWindow && !FUNC1(hmenuWindow))
    {
	FUNC7("hmenuWindow is not a menu handle\n");
	return 0L;
    }

    if (!(ci = FUNC8( hwnd ))) return 0;

    FUNC6("old frame menu %p, old window menu %p\n", ci->hFrameMenu, ci->hWindowMenu);

    if (hmenuFrame)
    {
        if (hmenuFrame == ci->hFrameMenu) return (LRESULT)hmenuFrame;

        if (ci->hwndChildMaximized)
            FUNC4( hwndFrame, ci->hwndChildMaximized, ci->hBmpClose );
    }

    if( hmenuWindow && hmenuWindow != ci->hWindowMenu )
    {
        /* delete menu items from ci->hWindowMenu
         * and add them to hmenuWindow */
        /* Agent newsreader calls this function with  ci->hWindowMenu == NULL */
        if( ci->hWindowMenu && ci->nActiveChildren )
        {
            UINT nActiveChildren_old = ci->nActiveChildren;

            /* Remove all items from old Window menu */
            ci->nActiveChildren = 0;
            FUNC3(ci);

            ci->hWindowMenu = hmenuWindow;

            /* Add items to the new Window menu */
            ci->nActiveChildren = nActiveChildren_old;
            FUNC3(ci);
        }
        else
            ci->hWindowMenu = hmenuWindow;
    }

    if (hmenuFrame)
    {
        FUNC5(hwndFrame, hmenuFrame);
        if( hmenuFrame != ci->hFrameMenu )
        {
            HMENU oldFrameMenu = ci->hFrameMenu;

            ci->hFrameMenu = hmenuFrame;
            if (ci->hwndChildMaximized)
                FUNC2( hwndFrame, ci->hwndChildMaximized );

            return (LRESULT)oldFrameMenu;
        }
    }

    return 0;
}