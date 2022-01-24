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
struct TYPE_7__ {TYPE_4__* sys; } ;
struct TYPE_8__ {TYPE_1__ owner; } ;
typedef  TYPE_2__ vout_window_t ;
struct TYPE_9__ {TYPE_2__* surface; } ;
typedef  TYPE_3__ vlc_gl_t ;
struct TYPE_10__ {unsigned int width; unsigned int height; int /*<<< orphan*/  lock; } ;
typedef  TYPE_4__ vlc_gl_surface_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

bool FUNC3(vlc_gl_t *gl, unsigned *restrict width,
                              unsigned *restrict height)
{
    vout_window_t *surface = gl->surface;
    vlc_gl_surface_t *sys = surface->owner.sys;
    bool ret = false;

    FUNC1(&sys->lock);
    if (sys->width >= 0 && sys->height >= 0)
    {
        *width = sys->width;
        *height = sys->height;
        sys->width = -1;
        sys->height = -1;

        FUNC0(gl, *width, *height);
        ret = true;
    }
    FUNC2(&sys->lock);
    return ret;
}