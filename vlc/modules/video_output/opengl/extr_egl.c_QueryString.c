
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
typedef int int32_t ;


 char const* eglQueryString (int ,int ) ;

__attribute__((used)) static const char *QueryString(vlc_gl_t *gl, int32_t name)
{
    vlc_gl_sys_t *sys = gl->sys;

    return eglQueryString(sys->display, name);
}
