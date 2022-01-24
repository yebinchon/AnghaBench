#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ hGLDC; int /*<<< orphan*/  hvideownd; scalar_t__ hGLRC; } ;
typedef  TYPE_1__ vout_display_sys_t ;
struct TYPE_7__ {TYPE_1__* sys; } ;
typedef  TYPE_2__ vlc_gl_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(vlc_gl_t *gl)
{
    vout_display_sys_t *sys = gl->sys;

    if (sys->hGLRC)
        FUNC3(sys->hGLRC);
    if (sys->hGLDC)
        FUNC1(sys->hvideownd, sys->hGLDC);

    FUNC0(gl);

    FUNC2(sys);
}