
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ hGLDC; int hvideownd; scalar_t__ hGLRC; } ;
typedef TYPE_1__ vout_display_sys_t ;
struct TYPE_7__ {TYPE_1__* sys; } ;
typedef TYPE_2__ vlc_gl_t ;


 int DestroyGPUAffinityDC (TYPE_2__*) ;
 int ReleaseDC (int ,scalar_t__) ;
 int free (TYPE_1__*) ;
 int wglDeleteContext (scalar_t__) ;

__attribute__((used)) static void Close(vlc_gl_t *gl)
{
    vout_display_sys_t *sys = gl->sys;

    if (sys->hGLRC)
        wglDeleteContext(sys->hGLRC);
    if (sys->hGLDC)
        ReleaseDC(sys->hvideownd, sys->hGLDC);

    DestroyGPUAffinityDC(gl);

    free(sys);
}
