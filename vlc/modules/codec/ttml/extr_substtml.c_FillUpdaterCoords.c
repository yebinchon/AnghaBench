
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {double member_0; int member_1; } ;
typedef TYPE_3__ ttml_length_t ;
struct TYPE_17__ {int i_cell_resolution_v; int i_cell_resolution_h; } ;
typedef TYPE_4__ ttml_context_t ;
struct TYPE_15__ {int y; int x; } ;
struct TYPE_14__ {int y; int x; } ;
struct TYPE_18__ {int align; int flags; TYPE_2__ extent; TYPE_1__ origin; } ;
typedef TYPE_5__ substext_updater_region_t ;


 int FillCoord (TYPE_3__,int ,int *,int *) ;
 int SUBPICTURE_ALIGN_LEFT ;
 int SUBPICTURE_ALIGN_TOP ;
 int TTML_UNIT_PERCENT ;
 int UPDT_REGION_EXTENT_X_IS_RATIO ;
 int UPDT_REGION_EXTENT_Y_IS_RATIO ;
 int UPDT_REGION_ORIGIN_X_IS_RATIO ;
 int UPDT_REGION_ORIGIN_Y_IS_RATIO ;
 TYPE_3__ ttml_rebase_length (int ,TYPE_3__,TYPE_3__) ;

__attribute__((used)) static void FillUpdaterCoords( ttml_context_t *p_ctx, ttml_length_t h, ttml_length_t v,
                               bool b_origin, substext_updater_region_t *p_updt )
{
    ttml_length_t base = { 100.0, TTML_UNIT_PERCENT };
    ttml_length_t x = ttml_rebase_length( p_ctx->i_cell_resolution_h, h, base );
    ttml_length_t y = ttml_rebase_length( p_ctx->i_cell_resolution_v, v, base );
    if( b_origin )
    {
        FillCoord( x, UPDT_REGION_ORIGIN_X_IS_RATIO, &p_updt->origin.x, &p_updt->flags );
        FillCoord( y, UPDT_REGION_ORIGIN_Y_IS_RATIO, &p_updt->origin.y, &p_updt->flags );
        p_updt->align = SUBPICTURE_ALIGN_TOP|SUBPICTURE_ALIGN_LEFT;
    }
    else
    {
        FillCoord( x, UPDT_REGION_EXTENT_X_IS_RATIO, &p_updt->extent.x, &p_updt->flags );
        FillCoord( y, UPDT_REGION_EXTENT_Y_IS_RATIO, &p_updt->extent.y, &p_updt->flags );
    }
}
