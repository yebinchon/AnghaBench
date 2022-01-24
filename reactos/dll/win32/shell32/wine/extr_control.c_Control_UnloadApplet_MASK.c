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
struct TYPE_6__ {unsigned int count; struct TYPE_6__* cmd; int /*<<< orphan*/  entry; int /*<<< orphan*/  hModule; int /*<<< orphan*/  hWnd; int /*<<< orphan*/  (* proc ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,long,long) ;TYPE_1__* info; } ;
struct TYPE_5__ {long data; } ;
typedef  TYPE_2__ CPlApplet ;

/* Variables and functions */
 int /*<<< orphan*/  CPL_EXIT ; 
 int /*<<< orphan*/  CPL_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,long,long) ; 

void FUNC6(CPlApplet* applet)
{
    unsigned	i;

    for (i = 0; i < applet->count; i++)
        applet->proc(applet->hWnd, CPL_STOP, i, applet->info[i].data);

    if (applet->proc) applet->proc(applet->hWnd, CPL_EXIT, 0L, 0L);
    FUNC0(applet->hModule);
#ifndef __REACTOS__
    FUNC3( &applet->entry );
#endif
    FUNC2(FUNC1(), 0, applet->cmd);
    FUNC2(FUNC1(), 0, applet);
}