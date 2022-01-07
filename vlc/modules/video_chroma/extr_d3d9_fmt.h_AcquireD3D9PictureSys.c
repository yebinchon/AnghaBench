
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dxva2_dll; int surface; } ;
typedef TYPE_1__ picture_sys_d3d9_t ;


 int IDirect3DSurface9_AddRef (int ) ;
 int LoadLibrary (int ) ;
 int TEXT (char*) ;

__attribute__((used)) static inline void AcquireD3D9PictureSys(picture_sys_d3d9_t *p_sys)
{
    IDirect3DSurface9_AddRef(p_sys->surface);
    p_sys->dxva2_dll = LoadLibrary(TEXT("DXVA2.DLL"));
}
