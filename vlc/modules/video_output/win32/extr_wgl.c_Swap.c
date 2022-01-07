
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hGLDC; } ;
typedef TYPE_1__ vout_display_sys_t ;
struct TYPE_5__ {TYPE_1__* sys; } ;
typedef TYPE_2__ vlc_gl_t ;


 int SwapBuffers (int ) ;

__attribute__((used)) static void Swap(vlc_gl_t *gl)
{
    vout_display_sys_t *sys = gl->sys;
    SwapBuffers(sys->hGLDC);
}
