
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vlc_gl_t ;
struct TYPE_5__ {void* (* eglCreateImageKHR ) (int ,int *,unsigned int,void*,int const*) ;int display; } ;
typedef TYPE_2__ vlc_gl_sys_t ;
typedef int int32_t ;


 void* stub1 (int ,int *,unsigned int,void*,int const*) ;

__attribute__((used)) static void *CreateImageKHR(vlc_gl_t *gl, unsigned target, void *buffer,
                            const int32_t *attrib_list)
{
    vlc_gl_sys_t *sys = gl->sys;

    return sys->eglCreateImageKHR(sys->display, ((void*)0), target, buffer,
                                  attrib_list);
}
