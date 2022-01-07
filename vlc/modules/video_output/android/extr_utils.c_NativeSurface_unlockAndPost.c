
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int p_surface_handle; int (* pf_unlockAndPost ) (int ) ;} ;
typedef TYPE_1__ NativeSurface ;
typedef int ANativeWindow ;


 int stub1 (int ) ;

__attribute__((used)) static void
NativeSurface_unlockAndPost(ANativeWindow *p_anw)
{
    NativeSurface *p_ns = (NativeSurface *)p_anw;

    p_ns->pf_unlockAndPost(p_ns->p_surface_handle);
}
