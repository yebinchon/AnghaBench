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
struct TYPE_9__ {TYPE_2__* surface; TYPE_4__* sys; } ;
typedef  TYPE_3__ vlc_gl_t ;
struct TYPE_10__ {scalar_t__ display; scalar_t__ context; scalar_t__ surface; int /*<<< orphan*/ * window; int /*<<< orphan*/ * x11; } ;
typedef  TYPE_4__ vlc_gl_sys_t ;
struct TYPE_7__ {int /*<<< orphan*/  anativewindow; } ;
struct TYPE_8__ {TYPE_1__ handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AWindow_Video ; 
 scalar_t__ EGL_NO_CONTEXT ; 
 scalar_t__ EGL_NO_DISPLAY ; 
 scalar_t__ EGL_NO_SURFACE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(vlc_gl_t *gl)
{
    vlc_gl_sys_t *sys = gl->sys;

    if (sys->display != EGL_NO_DISPLAY)
    {
        if (sys->context != EGL_NO_CONTEXT)
            FUNC2(sys->display, sys->context);
        if (sys->surface != EGL_NO_SURFACE)
            FUNC3(sys->display, sys->surface);
        FUNC4(sys->display);
    }
#ifdef USE_PLATFORM_X11
    if (sys->x11 != NULL)
        XCloseDisplay(sys->x11);
#endif
#ifdef USE_PLATFORM_WAYLAND
    if (sys->window != NULL)
        wl_egl_window_destroy(sys->window);
#endif
#ifdef USE_PLATFORM_ANDROID
    AWindowHandler_releaseANativeWindow(gl->surface->handle.anativewindow,
                                        AWindow_Video);
#endif
    FUNC5 (sys);
}