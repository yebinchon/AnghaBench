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
struct TYPE_9__ {TYPE_4__* sys; } ;
typedef  TYPE_3__ vout_window_t ;
struct TYPE_7__ {unsigned int width; unsigned int height; } ;
struct TYPE_8__ {int width; int height; } ;
struct TYPE_10__ {int /*<<< orphan*/  surface; TYPE_1__ set; TYPE_2__ wm; } ;
typedef  TYPE_4__ vout_window_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC2(vout_window_t *wnd)
{
    vout_window_sys_t *sys = wnd->sys;
    /* Zero wm.width or zero wm.height means the client should choose.
     * DO NOT REPORT those values to video output... */
    unsigned width = sys->wm.width ? sys->wm.width : sys->set.width;
    unsigned height = sys->wm.height ? sys->wm.height : sys->set.height;

    FUNC0(wnd, width, height);
    FUNC1(sys->surface, 0, 0, width, height);
}