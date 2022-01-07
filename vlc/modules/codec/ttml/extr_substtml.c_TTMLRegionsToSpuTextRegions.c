
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {int inner_align; int * p_segments; int * p_region_style; int * p_next; } ;
struct TYPE_15__ {TYPE_4__ updt; } ;
typedef TYPE_2__ ttml_region_t ;
struct TYPE_16__ {double margin_ratio; TYPE_4__ region; } ;
typedef TYPE_3__ subtext_updater_sys_t ;
typedef TYPE_4__ substext_updater_region_t ;
struct TYPE_14__ {TYPE_3__* p_sys; } ;
struct TYPE_18__ {TYPE_1__ updater; } ;
typedef TYPE_5__ subpicture_t ;
struct TYPE_19__ {TYPE_7__* p_sys; } ;
typedef TYPE_6__ decoder_t ;
struct TYPE_20__ {int i_align; } ;
typedef TYPE_7__ decoder_sys_t ;


 int SUBPICTURE_ALIGN_MASK ;
 int SubpictureUpdaterSysRegionAdd (TYPE_4__*,TYPE_4__*) ;
 TYPE_4__* SubpictureUpdaterSysRegionNew () ;

__attribute__((used)) static void TTMLRegionsToSpuTextRegions( decoder_t *p_dec, subpicture_t *p_spu,
                                         ttml_region_t *p_regions )
{
    decoder_sys_t *p_dec_sys = p_dec->p_sys;
    subtext_updater_sys_t *p_spu_sys = p_spu->updater.p_sys;
    substext_updater_region_t *p_updtregion = ((void*)0);


    for( ttml_region_t *p_region = p_regions;
         p_region; p_region = (ttml_region_t *) p_region->updt.p_next )
    {
        if( p_updtregion == ((void*)0) )
        {
            p_updtregion = &p_spu_sys->region;
        }
        else
        {
            p_updtregion = SubpictureUpdaterSysRegionNew();
            if( p_updtregion == ((void*)0) )
                break;
            SubpictureUpdaterSysRegionAdd( &p_spu_sys->region, p_updtregion );
        }


        if( p_dec_sys->i_align & SUBPICTURE_ALIGN_MASK )
            p_spu_sys->region.inner_align = p_dec_sys->i_align;

        p_spu_sys->margin_ratio = 0.0;


        *p_updtregion = p_region->updt;
        p_updtregion->p_next = ((void*)0);
        p_region->updt.p_region_style = ((void*)0);
        p_region->updt.p_segments = ((void*)0);
    }
}
