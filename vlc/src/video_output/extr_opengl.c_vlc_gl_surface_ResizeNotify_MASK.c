#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_3__* sys; } ;
struct TYPE_7__ {TYPE_1__ owner; } ;
typedef  TYPE_2__ vout_window_t ;
struct TYPE_8__ {unsigned int width; unsigned int height; int /*<<< orphan*/  lock; } ;
typedef  TYPE_3__ vlc_gl_surface_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(vout_window_t *surface,
                                        unsigned width, unsigned height)
{
    vlc_gl_surface_t *sys = surface->owner.sys;

    FUNC0(surface, "resized to %ux%u", width, height);

    FUNC1(&sys->lock);
    sys->width = width;
    sys->height = height;
    FUNC2(&sys->lock);
}