
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ p_pic; } ;
typedef TYPE_1__ ttml_image_updater_region_t ;


 int free (TYPE_1__*) ;
 int picture_Release (scalar_t__) ;

__attribute__((used)) static void TTML_ImageUpdaterRegionDelete(ttml_image_updater_region_t *p_updtregion)
{
    if (p_updtregion->p_pic)
        picture_Release(p_updtregion->p_pic);
    free(p_updtregion);
}
