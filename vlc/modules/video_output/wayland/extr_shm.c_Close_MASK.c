#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_5__* sys; } ;
typedef  TYPE_4__ vout_display_t ;
struct TYPE_13__ {scalar_t__ active_buffers; int /*<<< orphan*/  eventq; int /*<<< orphan*/  shm; int /*<<< orphan*/ * viewporter; int /*<<< orphan*/ * viewport; TYPE_3__* embed; } ;
typedef  TYPE_5__ vout_display_sys_t ;
struct wl_surface {int dummy; } ;
struct wl_display {int dummy; } ;
struct TYPE_10__ {struct wl_surface* wl; } ;
struct TYPE_9__ {struct wl_display* wl; } ;
struct TYPE_11__ {TYPE_2__ handle; TYPE_1__ display; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct wl_display*) ; 
 int /*<<< orphan*/  FUNC3 (struct wl_display*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wl_surface*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wl_surface*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(vout_display_t *vd)
{
    vout_display_sys_t *sys = vd->sys;
    struct wl_display *display = sys->embed->display.wl;
    struct wl_surface *surface = sys->embed->handle.wl;

    FUNC6(surface, NULL, 0, 0);
    FUNC7(surface);

    /* Wait until all picture buffers are released by the server */
    while (sys->active_buffers > 0) {
        FUNC1(vd, "%zu buffer(s) still active", sys->active_buffers);
        FUNC3(display, sys->eventq);
    }
    FUNC1(vd, "no active buffers left");

    if (sys->viewport != NULL)
        FUNC8(sys->viewport);
    if (sys->viewporter != NULL)
        FUNC9(sys->viewporter);
    FUNC5(sys->shm);
    FUNC2(display);
    FUNC4(sys->eventq);
    FUNC0(sys);
}