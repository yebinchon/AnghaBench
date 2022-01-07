
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ inner_align; int align; } ;
typedef TYPE_1__ substext_updater_region_t ;


 int SUBPICTURE_ALIGN_BOTTOM ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static inline void SubpictureUpdaterSysRegionInit(substext_updater_region_t *p_updtregion)
{
    memset(p_updtregion, 0, sizeof(*p_updtregion));
    p_updtregion->align = SUBPICTURE_ALIGN_BOTTOM;
    p_updtregion->inner_align = 0;
}
