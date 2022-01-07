
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_max_width; int i_max_height; } ;
typedef TYPE_1__ subpicture_region_t ;



__attribute__((used)) static void vout_OSDRegionConstrain(subpicture_region_t *p_region, int w, int h)
{
    if( p_region )
    {
        p_region->i_max_width = w;
        p_region->i_max_height = h;
    }
}
