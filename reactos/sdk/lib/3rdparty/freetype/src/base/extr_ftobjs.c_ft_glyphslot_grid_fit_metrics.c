
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* horiBearingX; void* horiBearingY; void* vertBearingX; void* width; void* vertBearingY; void* height; void* vertAdvance; void* horiAdvance; } ;
struct TYPE_5__ {TYPE_1__ metrics; } ;
typedef void* FT_Pos ;
typedef TYPE_1__ FT_Glyph_Metrics ;
typedef TYPE_2__* FT_GlyphSlot ;
typedef scalar_t__ FT_Bool ;


 void* ADD_LONG (void*,void*) ;
 void* FT_PIX_CEIL_LONG (void*) ;
 void* FT_PIX_FLOOR (void*) ;
 void* FT_PIX_ROUND_LONG (void*) ;
 void* SUB_LONG (void*,void*) ;

__attribute__((used)) static void
  ft_glyphslot_grid_fit_metrics( FT_GlyphSlot slot,
                                 FT_Bool vertical )
  {
    FT_Glyph_Metrics* metrics = &slot->metrics;
    FT_Pos right, bottom;


    if ( vertical )
    {
      metrics->horiBearingX = FT_PIX_FLOOR( metrics->horiBearingX );
      metrics->horiBearingY = FT_PIX_CEIL_LONG( metrics->horiBearingY );

      right = FT_PIX_CEIL_LONG( ADD_LONG( metrics->vertBearingX,
                                           metrics->width ) );
      bottom = FT_PIX_CEIL_LONG( ADD_LONG( metrics->vertBearingY,
                                           metrics->height ) );

      metrics->vertBearingX = FT_PIX_FLOOR( metrics->vertBearingX );
      metrics->vertBearingY = FT_PIX_FLOOR( metrics->vertBearingY );

      metrics->width = SUB_LONG( right,
                                  metrics->vertBearingX );
      metrics->height = SUB_LONG( bottom,
                                  metrics->vertBearingY );
    }
    else
    {
      metrics->vertBearingX = FT_PIX_FLOOR( metrics->vertBearingX );
      metrics->vertBearingY = FT_PIX_FLOOR( metrics->vertBearingY );

      right = FT_PIX_CEIL_LONG( ADD_LONG( metrics->horiBearingX,
                                           metrics->width ) );
      bottom = FT_PIX_FLOOR( SUB_LONG( metrics->horiBearingY,
                                       metrics->height ) );

      metrics->horiBearingX = FT_PIX_FLOOR( metrics->horiBearingX );
      metrics->horiBearingY = FT_PIX_CEIL_LONG( metrics->horiBearingY );

      metrics->width = SUB_LONG( right,
                                  metrics->horiBearingX );
      metrics->height = SUB_LONG( metrics->horiBearingY,
                                  bottom );
    }

    metrics->horiAdvance = FT_PIX_ROUND_LONG( metrics->horiAdvance );
    metrics->vertAdvance = FT_PIX_ROUND_LONG( metrics->vertAdvance );
  }
