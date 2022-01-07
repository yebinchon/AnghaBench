
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p_dl_handle; } ;
typedef TYPE_1__ NativeSurface ;
typedef int ANativeWindow ;


 int dlclose (int ) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void
NativeSurface_release(ANativeWindow* p_anw)
{
    NativeSurface *p_ns = (NativeSurface *)p_anw;

    dlclose(p_ns->p_dl_handle);
    free(p_ns);
}
