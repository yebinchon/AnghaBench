
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vlc_gl_t ;
struct TYPE_5__ {int ctx; int win; int display; } ;
typedef TYPE_2__ vlc_gl_sys_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int glXMakeContextCurrent (int ,int ,int ,int ) ;

__attribute__((used)) static int MakeCurrent (vlc_gl_t *gl)
{
    vlc_gl_sys_t *sys = gl->sys;

    if (!glXMakeContextCurrent (sys->display, sys->win, sys->win, sys->ctx))
        return VLC_EGENERIC;
    return VLC_SUCCESS;
}
