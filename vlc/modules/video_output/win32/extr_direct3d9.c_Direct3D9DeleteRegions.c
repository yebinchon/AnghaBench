
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ texture; } ;
typedef TYPE_1__ d3d_region_t ;


 int IDirect3DTexture9_Release (scalar_t__) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void Direct3D9DeleteRegions(size_t count, d3d_region_t *region)
{
    for (size_t i = 0; i < count; i++) {
        if (region[i].texture)
            IDirect3DTexture9_Release(region[i].texture);
    }
    free(region);
}
