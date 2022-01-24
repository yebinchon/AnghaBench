#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  wl; } ;
struct TYPE_9__ {TYPE_1__ handle; } ;
typedef  TYPE_2__ vout_window_t ;
struct TYPE_10__ {TYPE_4__* p_sys; } ;
typedef  TYPE_3__ vlc_inhibit_t ;
struct TYPE_11__ {int /*<<< orphan*/  manager; int /*<<< orphan*/ * inhibitor; } ;
typedef  TYPE_4__ vlc_inhibit_sys_t ;

/* Variables and functions */
 unsigned int VLC_INHIBIT_DISPLAY ; 
 TYPE_2__* FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3 (vlc_inhibit_t *ih, unsigned mask)
{
    vout_window_t *wnd = FUNC0(ih);
    vlc_inhibit_sys_t *sys = ih->p_sys;
    bool suspend = (mask & VLC_INHIBIT_DISPLAY) != 0;

    if (sys->inhibitor != NULL) {
        FUNC2(sys->inhibitor);
        sys->inhibitor = NULL;
    }

    if (suspend)
        sys->inhibitor = FUNC1(
            sys->manager, wnd->handle.wl);

}