
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dxva2_dll; int surface; } ;
typedef TYPE_1__ picture_sys_d3d9_t ;


 int FreeLibrary (int ) ;
 int IDirect3DSurface9_Release (int ) ;

__attribute__((used)) static inline void ReleaseD3D9PictureSys(picture_sys_d3d9_t *p_sys)
{
    IDirect3DSurface9_Release(p_sys->surface);
    FreeLibrary(p_sys->dxva2_dll);
}
