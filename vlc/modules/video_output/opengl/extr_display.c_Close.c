
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_display_t ;
struct TYPE_6__ {int vgl; int * gl; } ;
typedef TYPE_2__ vout_display_sys_t ;
typedef int vlc_gl_t ;


 int free (TYPE_2__*) ;
 int vlc_gl_MakeCurrent (int *) ;
 int vlc_gl_Release (int *) ;
 int vlc_gl_ReleaseCurrent (int *) ;
 int vout_display_opengl_Delete (int ) ;

__attribute__((used)) static void Close(vout_display_t *vd)
{
    vout_display_sys_t *sys = vd->sys;
    vlc_gl_t *gl = sys->gl;

    vlc_gl_MakeCurrent (gl);
    vout_display_opengl_Delete (sys->vgl);
    vlc_gl_ReleaseCurrent (gl);

    vlc_gl_Release (gl);
    free (sys);
}
