#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int flags; scalar_t__ wExtra; } ;
typedef  TYPE_1__ WND ;
typedef  int /*<<< orphan*/  MDICLIENTINFO ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  GWLP_MDIWND ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int WIN_ISMDICLIENT ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* WND_DESKTOP ; 
 TYPE_1__* WND_OTHER_PROCESS ; 

__attribute__((used)) static MDICLIENTINFO *FUNC5( HWND client )
{
#ifdef __REACTOS__
    return (MDICLIENTINFO *)GetWindowLongPtr(client, GWLP_MDIWND);
#else
    MDICLIENTINFO *ret = NULL;
    WND *win = FUNC3( client );
    if (win)
    {
        if (win == WND_OTHER_PROCESS || win == WND_DESKTOP)
        {
            if (FUNC1(client)) FUNC2( "client %p belongs to other process\n", client );
            return NULL;
        }
        if (win->flags & WIN_ISMDICLIENT)
            ret = (MDICLIENTINFO *)win->wExtra;
        else
            FUNC2( "%p is not an MDI client\n", client );
        FUNC4( win );
    }
    return ret;
#endif
}