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
typedef  TYPE_1__* vlc_timer_t ;
struct TYPE_4__ {scalar_t__ htimer; int quit; int /*<<< orphan*/  hev; int /*<<< orphan*/  tid; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCWW_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ NULLHANDLE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void FUNC5 (vlc_timer_t timer)
{
    if (timer->htimer != NULLHANDLE)
        FUNC2 (timer->htimer);

    timer->quit = true;
    FUNC1 (timer->hev);
    FUNC3 (&timer->tid, DCWW_WAIT);
    FUNC0 (timer->hev);

    FUNC4 (timer);
}