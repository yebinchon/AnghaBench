
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_10__ ;


struct TYPE_20__ {int y; int x; } ;
struct TYPE_18__ {int y; int x; } ;
struct TYPE_21__ {TYPE_5__ extent; TYPE_3__ origin; int flags; scalar_t__ p_next; } ;
struct TYPE_16__ {int i_bytes; int p_bytes; } ;
struct TYPE_23__ {TYPE_6__ updt; TYPE_1__ bgbitmap; } ;
typedef TYPE_8__ ttml_region_t ;
struct TYPE_19__ {int y; int x; } ;
struct TYPE_17__ {int y; int x; } ;
struct TYPE_24__ {TYPE_4__ extent; TYPE_2__ origin; int i_flags; } ;
typedef TYPE_9__ ttml_image_updater_region_t ;
struct TYPE_22__ {int p_sys; } ;
struct TYPE_15__ {TYPE_7__ updater; } ;
typedef TYPE_10__ subpicture_t ;
typedef int picture_t ;
typedef int decoder_t ;


 scalar_t__ EXTENT_Y_IS_RATIO ;
 scalar_t__ ORIGIN_X_IS_RATIO ;
 int TTML_ImageSpuAppendRegion (int ,TYPE_9__*) ;
 TYPE_9__* TTML_ImageUpdaterRegionNew (int *) ;
 scalar_t__ UPDT_REGION_EXTENT_Y_IS_RATIO ;
 scalar_t__ UPDT_REGION_ORIGIN_X_IS_RATIO ;
 int * picture_CreateFromPNG (int *,int ,int ) ;
 int picture_Release (int *) ;
 int static_assert (int,char*) ;

__attribute__((used)) static void TTMLRegionsToSpuBitmapRegions( decoder_t *p_dec, subpicture_t *p_spu,
                                           ttml_region_t *p_regions )
{

    for( ttml_region_t *p_region = p_regions;
                        p_region; p_region = (ttml_region_t *) p_region->updt.p_next )
    {
        picture_t *p_pic = picture_CreateFromPNG( p_dec, p_region->bgbitmap.p_bytes,
                                                         p_region->bgbitmap.i_bytes );
        if( p_pic )
        {
            ttml_image_updater_region_t *r = TTML_ImageUpdaterRegionNew( p_pic );
            if( !r )
            {
                picture_Release( p_pic );
                continue;
            }

            static_assert((int)UPDT_REGION_ORIGIN_X_IS_RATIO == (int)ORIGIN_X_IS_RATIO,
                          "flag enums values differs");
            static_assert((int)UPDT_REGION_EXTENT_Y_IS_RATIO == (int)EXTENT_Y_IS_RATIO,
                          "flag enums values differs");
            r->i_flags = p_region->updt.flags;
            r->origin.x = p_region->updt.origin.x;
            r->origin.y = p_region->updt.origin.y;
            r->extent.x = p_region->updt.extent.x;
            r->extent.y = p_region->updt.extent.y;
            TTML_ImageSpuAppendRegion( p_spu->updater.p_sys, r );
        }
    }
}
