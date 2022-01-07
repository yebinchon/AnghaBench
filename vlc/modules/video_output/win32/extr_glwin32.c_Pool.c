
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_display_t ;
struct TYPE_5__ {int * pool; int gl; int vgl; } ;
typedef TYPE_2__ vout_display_sys_t ;
typedef int picture_pool_t ;


 scalar_t__ VLC_SUCCESS ;
 scalar_t__ vlc_gl_MakeCurrent (int ) ;
 int vlc_gl_ReleaseCurrent (int ) ;
 int * vout_display_opengl_GetPool (int ,unsigned int) ;

__attribute__((used)) static picture_pool_t *Pool(vout_display_t *vd, unsigned count)
{
    vout_display_sys_t *sys = vd->sys;

    if (!sys->pool && vlc_gl_MakeCurrent (sys->gl) == VLC_SUCCESS)
    {
        sys->pool = vout_display_opengl_GetPool(sys->vgl, count);
        vlc_gl_ReleaseCurrent (sys->gl);
    }
    return sys->pool;
}
