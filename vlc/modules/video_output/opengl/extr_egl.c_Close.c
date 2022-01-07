
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* surface; TYPE_4__* sys; } ;
typedef TYPE_3__ vlc_gl_t ;
struct TYPE_10__ {scalar_t__ display; scalar_t__ context; scalar_t__ surface; int * window; int * x11; } ;
typedef TYPE_4__ vlc_gl_sys_t ;
struct TYPE_7__ {int anativewindow; } ;
struct TYPE_8__ {TYPE_1__ handle; } ;


 int AWindowHandler_releaseANativeWindow (int ,int ) ;
 int AWindow_Video ;
 scalar_t__ EGL_NO_CONTEXT ;
 scalar_t__ EGL_NO_DISPLAY ;
 scalar_t__ EGL_NO_SURFACE ;
 int XCloseDisplay (int *) ;
 int eglDestroyContext (scalar_t__,scalar_t__) ;
 int eglDestroySurface (scalar_t__,scalar_t__) ;
 int eglTerminate (scalar_t__) ;
 int free (TYPE_4__*) ;
 int wl_egl_window_destroy (int *) ;

__attribute__((used)) static void Close(vlc_gl_t *gl)
{
    vlc_gl_sys_t *sys = gl->sys;

    if (sys->display != EGL_NO_DISPLAY)
    {
        if (sys->context != EGL_NO_CONTEXT)
            eglDestroyContext(sys->display, sys->context);
        if (sys->surface != EGL_NO_SURFACE)
            eglDestroySurface(sys->display, sys->surface);
        eglTerminate(sys->display);
    }
    free (sys);
}
