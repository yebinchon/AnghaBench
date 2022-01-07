
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * hxdll; int hd3d; } ;
typedef TYPE_1__ vout_display_sys_t ;


 int D3D9_Destroy (int *) ;
 int FreeLibrary (int *) ;

__attribute__((used)) static void Direct3D9Destroy(vout_display_sys_t *sys)
{
    D3D9_Destroy( &sys->hd3d );

    if (sys->hxdll)
    {
        FreeLibrary(sys->hxdll);
        sys->hxdll = ((void*)0);
    }
}
