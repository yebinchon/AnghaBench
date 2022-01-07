
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* p_regions; } ;
typedef TYPE_2__ ttml_image_updater_sys_t ;
struct TYPE_10__ {struct TYPE_10__* p_next; } ;
typedef TYPE_3__ ttml_image_updater_region_t ;
struct TYPE_8__ {TYPE_2__* p_sys; } ;
struct TYPE_11__ {TYPE_1__ updater; } ;
typedef TYPE_4__ subpicture_t ;


 int TTML_ImageUpdaterRegionDelete (TYPE_3__*) ;
 int free (TYPE_2__*) ;

__attribute__((used)) static void TTML_ImageSpuDestroy(subpicture_t *p_spu)
{
    ttml_image_updater_sys_t *p_sys = p_spu->updater.p_sys;
    while(p_sys->p_regions)
    {
        ttml_image_updater_region_t *p_next = p_sys->p_regions->p_next;
        TTML_ImageUpdaterRegionDelete(p_sys->p_regions);
        p_sys->p_regions = p_next;
    }
    free(p_sys);
}
