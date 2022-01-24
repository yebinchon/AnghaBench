#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
struct TYPE_5__ {scalar_t__ hwndActiveChild; } ;
typedef  TYPE_1__ MDICLIENTINFO ;
typedef  long LPARAM ;
typedef  int /*<<< orphan*/  LONG ;
typedef  scalar_t__ HWND ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WM_MDIACTIVATE ; 
 int /*<<< orphan*/  WM_NCACTIVATE ; 
 int /*<<< orphan*/  WM_SETFOCUS ; 
 TYPE_1__* FUNC7 (scalar_t__) ; 

__attribute__((used)) static LONG FUNC8( HWND client, HWND child )
{
    MDICLIENTINFO *clientInfo;
    HWND prevActiveWnd, frame;
    BOOL isActiveFrameWnd;

    clientInfo = FUNC7( client );

    if (clientInfo->hwndActiveChild == child) return 0;

    FUNC6("%p\n", child);

    frame = FUNC1(client);
    isActiveFrameWnd = (FUNC0() == frame);
    prevActiveWnd = clientInfo->hwndActiveChild;

    /* deactivate prev. active child */
    if(prevActiveWnd)
    {
        FUNC4( prevActiveWnd, WM_NCACTIVATE, FALSE, 0L );
        FUNC4( prevActiveWnd, WM_MDIACTIVATE, (WPARAM)prevActiveWnd, (LPARAM)child);
    }

    FUNC3( clientInfo, child, FALSE );
    clientInfo->hwndActiveChild = child;

    FUNC2(clientInfo);

    if( isActiveFrameWnd )
    {
        FUNC4( child, WM_NCACTIVATE, TRUE, 0L);
        /* Let the client window manage focus for children, but if the focus
         * is already on the client (for instance this is the 1st child) then
         * SetFocus won't work. It appears that Windows sends WM_SETFOCUS
         * manually in this case.
         */
        if (FUNC5(client) == client)
            FUNC4( client, WM_SETFOCUS, (WPARAM)client, 0 );
    }

    FUNC4( child, WM_MDIACTIVATE, (WPARAM)prevActiveWnd, (LPARAM)child );
    return TRUE;
}