
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int source; TYPE_3__* sys; } ;
typedef TYPE_2__ vout_display_t ;
struct TYPE_5__ {float height; scalar_t__ width; int y; int x; } ;
struct TYPE_7__ {int place_changed; int gl; int vgl; TYPE_1__ place; } ;
typedef TYPE_3__ vout_display_sys_t ;
typedef int picture_t ;


 scalar_t__ VLC_SUCCESS ;
 int VLC_UNUSED (int *) ;
 scalar_t__ vlc_gl_MakeCurrent (int ) ;
 int vlc_gl_ReleaseCurrent (int ) ;
 int vout_display_opengl_Display (int ,int *) ;
 int vout_display_opengl_SetWindowAspectRatio (int ,float) ;
 int vout_display_opengl_Viewport (int ,int ,int ,scalar_t__,float) ;

__attribute__((used)) static void PictureDisplay (vout_display_t *vd, picture_t *pic)
{
    vout_display_sys_t *sys = vd->sys;
    VLC_UNUSED(pic);

    if (vlc_gl_MakeCurrent (sys->gl) == VLC_SUCCESS)
    {
        if (sys->place_changed)
        {
            float window_ar = (float)sys->place.width / sys->place.height;
            vout_display_opengl_SetWindowAspectRatio(sys->vgl, window_ar);
            vout_display_opengl_Viewport(sys->vgl, sys->place.x, sys->place.y,
                                         sys->place.width, sys->place.height);
            sys->place_changed = 0;
        }

        vout_display_opengl_Display (sys->vgl, &vd->source);
        vlc_gl_ReleaseCurrent (sys->gl);
    }
}
