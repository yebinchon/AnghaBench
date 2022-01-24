#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* horiBearingX; void* horiBearingY; void* vertBearingX; void* width; void* vertBearingY; void* height; void* vertAdvance; void* horiAdvance; } ;
struct TYPE_5__ {TYPE_1__ metrics; } ;
typedef  void* FT_Pos ;
typedef  TYPE_1__ FT_Glyph_Metrics ;
typedef  TYPE_2__* FT_GlyphSlot ;
typedef  scalar_t__ FT_Bool ;

/* Variables and functions */
 void* FUNC0 (void*,void*) ; 
 void* FUNC1 (void*) ; 
 void* FUNC2 (void*) ; 
 void* FUNC3 (void*) ; 
 void* FUNC4 (void*,void*) ; 

__attribute__((used)) static void
  FUNC5( FT_GlyphSlot  slot,
                                 FT_Bool       vertical )
  {
    FT_Glyph_Metrics*  metrics = &slot->metrics;
    FT_Pos             right, bottom;


    if ( vertical )
    {
      metrics->horiBearingX = FUNC2( metrics->horiBearingX );
      metrics->horiBearingY = FUNC1( metrics->horiBearingY );

      right  = FUNC1( FUNC0( metrics->vertBearingX,
                                           metrics->width ) );
      bottom = FUNC1( FUNC0( metrics->vertBearingY,
                                           metrics->height ) );

      metrics->vertBearingX = FUNC2( metrics->vertBearingX );
      metrics->vertBearingY = FUNC2( metrics->vertBearingY );

      metrics->width  = FUNC4( right,
                                  metrics->vertBearingX );
      metrics->height = FUNC4( bottom,
                                  metrics->vertBearingY );
    }
    else
    {
      metrics->vertBearingX = FUNC2( metrics->vertBearingX );
      metrics->vertBearingY = FUNC2( metrics->vertBearingY );

      right  = FUNC1( FUNC0( metrics->horiBearingX,
                                           metrics->width ) );
      bottom = FUNC2( FUNC4( metrics->horiBearingY,
                                       metrics->height ) );

      metrics->horiBearingX = FUNC2( metrics->horiBearingX );
      metrics->horiBearingY = FUNC1( metrics->horiBearingY );

      metrics->width  = FUNC4( right,
                                  metrics->horiBearingX );
      metrics->height = FUNC4( metrics->horiBearingY,
                                  bottom );
    }

    metrics->horiAdvance = FUNC3( metrics->horiAdvance );
    metrics->vertAdvance = FUNC3( metrics->vertAdvance );
  }