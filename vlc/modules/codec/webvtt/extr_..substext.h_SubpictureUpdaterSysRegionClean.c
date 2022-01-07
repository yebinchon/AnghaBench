
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p_region_style; int p_segments; } ;
typedef TYPE_1__ substext_updater_region_t ;


 int text_segment_ChainDelete (int ) ;
 int text_style_Delete (int ) ;

__attribute__((used)) static inline void SubpictureUpdaterSysRegionClean(substext_updater_region_t *p_updtregion)
{
    text_segment_ChainDelete( p_updtregion->p_segments );
    text_style_Delete( p_updtregion->p_region_style );
}
