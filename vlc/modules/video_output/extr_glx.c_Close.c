
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vlc_gl_t ;
struct TYPE_6__ {int win; int ctx; int * display; } ;
typedef TYPE_2__ vlc_gl_sys_t ;
typedef int Display ;


 int XCloseDisplay (int *) ;
 int free (TYPE_2__*) ;
 int glXDestroyContext (int *,int ) ;
 int glXDestroyWindow (int *,int ) ;

__attribute__((used)) static void Close(vlc_gl_t *gl)
{
    vlc_gl_sys_t *sys = gl->sys;
    Display *dpy = sys->display;

    glXDestroyContext(dpy, sys->ctx);
    glXDestroyWindow(dpy, sys->win);
    XCloseDisplay(dpy);
    free(sys);
}
