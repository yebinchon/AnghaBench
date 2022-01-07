
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vlc_gl_t ;
struct TYPE_5__ {int (* eglDestroyImageKHR ) (int ,void*) ;int display; } ;
typedef TYPE_2__ vlc_gl_sys_t ;


 int stub1 (int ,void*) ;

__attribute__((used)) static bool DestroyImageKHR(vlc_gl_t *gl, void *image)
{
    vlc_gl_sys_t *sys = gl->sys;

    return sys->eglDestroyImageKHR(sys->display, image);
}
