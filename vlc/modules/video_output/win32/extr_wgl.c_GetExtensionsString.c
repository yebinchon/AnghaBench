
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* (* GetExtensionsStringEXT ) () ;char const* (* GetExtensionsStringARB ) (int ) ;} ;
struct TYPE_6__ {int hGLDC; TYPE_1__ exts; } ;
typedef TYPE_2__ vout_display_sys_t ;
struct TYPE_7__ {TYPE_2__* sys; } ;
typedef TYPE_3__ vlc_gl_t ;


 char const* stub1 () ;
 char const* stub2 (int ) ;

__attribute__((used)) static const char *GetExtensionsString(vlc_gl_t *gl)
{
    vout_display_sys_t *sys = gl->sys;
    return sys->exts.GetExtensionsStringEXT ?
            sys->exts.GetExtensionsStringEXT() :
            sys->exts.GetExtensionsStringARB(sys->hGLDC);
}
