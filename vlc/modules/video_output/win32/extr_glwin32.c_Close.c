
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vout_window_t ;
struct TYPE_10__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_display_t ;
struct TYPE_11__ {int sys; int p_sensors; scalar_t__ vgl; TYPE_3__* gl; } ;
typedef TYPE_2__ vout_display_sys_t ;
struct TYPE_12__ {int * surface; } ;
typedef TYPE_3__ vlc_gl_t ;


 int CommonWindowClean (int ,int *) ;
 int UnhookWindowsSensors (int ) ;
 int VLC_OBJECT (TYPE_1__*) ;
 int free (TYPE_2__*) ;
 int vlc_gl_MakeCurrent (TYPE_3__*) ;
 int vlc_gl_Release (TYPE_3__*) ;
 int vlc_gl_ReleaseCurrent (TYPE_3__*) ;
 int vlc_object_delete (int *) ;
 int vout_display_opengl_Delete (scalar_t__) ;

__attribute__((used)) static void Close(vout_display_t *vd)
{
    vout_display_sys_t *sys = vd->sys;
    vlc_gl_t *gl = sys->gl;

    if (gl)
    {
        vout_window_t *surface = gl->surface;
        if (sys->vgl)
        {
            vlc_gl_MakeCurrent (gl);
            vout_display_opengl_Delete(sys->vgl);
            vlc_gl_ReleaseCurrent (gl);
        }
        vlc_gl_Release (gl);
        vlc_object_delete(surface);
    }

    UnhookWindowsSensors(sys->p_sensors);
    CommonWindowClean(VLC_OBJECT(vd), &sys->sys);

    free(sys);
}
