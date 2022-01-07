
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * p_pic; } ;
typedef TYPE_1__ ttml_image_updater_region_t ;
typedef int picture_t ;


 TYPE_1__* calloc (int,int) ;

__attribute__((used)) static ttml_image_updater_region_t *TTML_ImageUpdaterRegionNew(picture_t *p_pic)
{
    ttml_image_updater_region_t *p_region = calloc(1, sizeof(*p_region));
    if(p_region)
        p_region->p_pic = p_pic;
    return p_region;
}
