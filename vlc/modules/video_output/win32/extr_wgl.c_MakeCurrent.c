
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hGLRC; int hGLDC; } ;
typedef TYPE_1__ vout_display_sys_t ;
struct TYPE_5__ {TYPE_1__* sys; } ;
typedef TYPE_2__ vlc_gl_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int wglMakeCurrent (int ,int ) ;

__attribute__((used)) static int MakeCurrent(vlc_gl_t *gl)
{
    vout_display_sys_t *sys = gl->sys;
    bool success = wglMakeCurrent(sys->hGLDC, sys->hGLRC);
    return success ? VLC_SUCCESS : VLC_EGENERIC;
}
