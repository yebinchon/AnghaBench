#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vout_window_t ;
struct TYPE_10__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ vout_display_t ;
struct TYPE_11__ {int /*<<< orphan*/  sys; int /*<<< orphan*/  p_sensors; scalar_t__ vgl; TYPE_3__* gl; } ;
typedef  TYPE_2__ vout_display_sys_t ;
struct TYPE_12__ {int /*<<< orphan*/ * surface; } ;
typedef  TYPE_3__ vlc_gl_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static void FUNC9(vout_display_t *vd)
{
    vout_display_sys_t *sys = vd->sys;
    vlc_gl_t *gl = sys->gl;

    if (gl)
    {
        vout_window_t *surface = gl->surface;
        if (sys->vgl)
        {
            FUNC4 (gl);
            FUNC8(sys->vgl);
            FUNC6 (gl);
        }
        FUNC5 (gl);
        FUNC7(surface);
    }

    FUNC1(sys->p_sensors);
    FUNC0(FUNC2(vd), &sys->sys);

    FUNC3(sys);
}