#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  wl; } ;
struct TYPE_8__ {TYPE_1__ display; } ;
typedef  TYPE_2__ vout_window_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_9__ {TYPE_4__* p_sys; } ;
typedef  TYPE_3__ vlc_inhibit_t ;
struct TYPE_10__ {int /*<<< orphan*/  eventq; int /*<<< orphan*/  manager; int /*<<< orphan*/ * inhibitor; } ;
typedef  TYPE_4__ vlc_inhibit_sys_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(vlc_object_t *obj)
{
    vlc_inhibit_t *ih = (vlc_inhibit_t *)obj;
    vlc_inhibit_sys_t *sys = ih->p_sys;
    vout_window_t *wnd = FUNC0(ih);

    if (sys->inhibitor != NULL)
        FUNC4(sys->inhibitor);

    FUNC3(sys->manager);
    FUNC1(wnd->display.wl);
    FUNC2(sys->eventq);
}