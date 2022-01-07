
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__** pp_append; } ;
typedef TYPE_1__ ttml_image_updater_sys_t ;
struct TYPE_6__ {struct TYPE_6__* p_next; } ;
typedef TYPE_2__ ttml_image_updater_region_t ;



__attribute__((used)) static void TTML_ImageSpuAppendRegion(ttml_image_updater_sys_t *p_sys,
                                      ttml_image_updater_region_t *p_new)
{
    *p_sys->pp_append = p_new;
    p_sys->pp_append = &p_new->p_next;
}
