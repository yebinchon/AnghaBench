
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_4__* sys; } ;
typedef TYPE_3__ vout_display_t ;
struct TYPE_6__ {int width; int height; int y; int x; } ;
struct TYPE_7__ {TYPE_1__ place; } ;
struct TYPE_9__ {int gl; int vgl; TYPE_2__ area; } ;
typedef TYPE_4__ vout_display_sys_t ;
typedef int vlc_tick_t ;
typedef int subpicture_t ;
typedef int picture_t ;


 scalar_t__ VLC_SUCCESS ;
 int VLC_UNUSED (int ) ;
 scalar_t__ vlc_gl_MakeCurrent (int ) ;
 int vlc_gl_ReleaseCurrent (int ) ;
 int vlc_gl_Resize (int ,int const,int const) ;
 int vout_display_opengl_Prepare (int ,int *,int *) ;
 int vout_display_opengl_SetWindowAspectRatio (int ,float) ;
 int vout_display_opengl_Viewport (int ,int ,int ,int const,int const) ;

__attribute__((used)) static void Prepare(vout_display_t *vd, picture_t *picture, subpicture_t *subpicture,
                    vlc_tick_t date)
{
    VLC_UNUSED(date);
    vout_display_sys_t *sys = vd->sys;

    const int width = sys->area.place.width;
    const int height = sys->area.place.height;
    vlc_gl_Resize (sys->gl, width, height);
    if (vlc_gl_MakeCurrent (sys->gl) != VLC_SUCCESS)
        return;
    vout_display_opengl_SetWindowAspectRatio(sys->vgl, (float)width / height);
    vout_display_opengl_Viewport(sys->vgl, sys->area.place.x, sys->area.place.y, width, height);
    vout_display_opengl_Prepare (sys->vgl, picture, subpicture);
    vlc_gl_ReleaseCurrent (sys->gl);
}
