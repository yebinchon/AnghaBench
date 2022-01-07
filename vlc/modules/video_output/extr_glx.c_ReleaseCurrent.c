
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vlc_gl_t ;
struct TYPE_5__ {int display; } ;
typedef TYPE_2__ vlc_gl_sys_t ;


 int None ;
 int glXMakeContextCurrent (int ,int ,int ,int *) ;

__attribute__((used)) static void ReleaseCurrent (vlc_gl_t *gl)
{
    vlc_gl_sys_t *sys = gl->sys;

    glXMakeContextCurrent (sys->display, None, None, ((void*)0));
}
