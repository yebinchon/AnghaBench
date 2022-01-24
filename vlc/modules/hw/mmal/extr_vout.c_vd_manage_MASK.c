#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_3__* sys; } ;
typedef  TYPE_2__ vout_display_t ;
struct TYPE_9__ {int need_configure_display; unsigned int display_width; unsigned int display_height; int /*<<< orphan*/  manage_mutex; TYPE_1__* last_cfg; int /*<<< orphan*/  dmx_handle; } ;
typedef  TYPE_3__ vout_display_sys_t ;
struct TYPE_7__ {int /*<<< orphan*/  window; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC6(vout_display_t *vd)
{
    vout_display_sys_t *sys = vd->sys;
    unsigned width, height;

    FUNC3(&sys->manage_mutex);

    if (sys->need_configure_display) {
        FUNC0(vd);
        sys->dmx_handle = FUNC2(0);

        if (FUNC1(vd, &width, &height) >= 0) {
            sys->display_width = width;
            sys->display_height = height;
            FUNC5(sys->last_cfg->window, width, height);
        }

        sys->need_configure_display = false;
    }

    FUNC4(&sys->manage_mutex);
}