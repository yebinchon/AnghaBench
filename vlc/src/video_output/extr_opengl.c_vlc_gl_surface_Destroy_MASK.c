#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_4__* sys; } ;
struct TYPE_11__ {TYPE_1__ owner; } ;
typedef  TYPE_2__ vout_window_t ;
struct TYPE_12__ {TYPE_2__* surface; } ;
typedef  TYPE_3__ vlc_gl_t ;
struct TYPE_13__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_4__ vlc_gl_surface_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

void FUNC5(vlc_gl_t *gl)
{
    vout_window_t *surface = gl->surface;
    vlc_gl_surface_t *sys = surface->owner.sys;

    FUNC1(gl);
    FUNC4(surface);
    FUNC3(surface);
    FUNC2(&sys->lock);
    FUNC0(sys);
}