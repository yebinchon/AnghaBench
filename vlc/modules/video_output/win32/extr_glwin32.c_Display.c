
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int source; TYPE_2__* sys; } ;
typedef TYPE_1__ vout_display_t ;
struct TYPE_5__ {int gl; int vgl; } ;
typedef TYPE_2__ vout_display_sys_t ;
typedef int picture_t ;


 scalar_t__ VLC_SUCCESS ;
 int VLC_UNUSED (int *) ;
 scalar_t__ vlc_gl_MakeCurrent (int ) ;
 int vlc_gl_ReleaseCurrent (int ) ;
 int vout_display_opengl_Display (int ,int *) ;

__attribute__((used)) static void Display(vout_display_t *vd, picture_t *picture)
{
    vout_display_sys_t *sys = vd->sys;
    VLC_UNUSED(picture);

    if (vlc_gl_MakeCurrent (sys->gl) == VLC_SUCCESS)
    {
        vout_display_opengl_Display (sys->vgl, &vd->source);
        vlc_gl_ReleaseCurrent (sys->gl);
    }
}
