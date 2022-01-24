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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ intf_thread_t ;
struct TYPE_6__ {int /*<<< orphan*/  fd; int /*<<< orphan*/  thread; int /*<<< orphan*/ * input; int /*<<< orphan*/  playlist; } ;
typedef  TYPE_2__ intf_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  PlaylistEvent ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(vlc_object_t *object)
{
    intf_thread_t *intf = (intf_thread_t*)object;
    intf_sys_t *sys = intf->p_sys;

    FUNC2(sys->playlist, "input-current", PlaylistEvent, intf);

    if (sys->input != NULL) {
        FUNC3(sys->thread);
        FUNC4(sys->thread, NULL);
    }

    FUNC1(sys->fd);
    FUNC0(sys);
}