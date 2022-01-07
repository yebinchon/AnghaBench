
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* decoder; } ;
struct TYPE_6__ {int is_t1; } ;
struct TYPE_7__ {int * glyph_width; TYPE_1__ builder; } ;
typedef TYPE_2__ PS_Decoder ;
typedef TYPE_3__* CF2_Outline ;
typedef int CF2_Fixed ;


 int FT_ASSERT (TYPE_2__*) ;
 int cf2_fixedToInt (int ) ;

__attribute__((used)) static void
  cf2_setGlyphWidth( CF2_Outline outline,
                     CF2_Fixed width )
  {
    PS_Decoder* decoder = outline->decoder;


    FT_ASSERT( decoder );

    if ( !decoder->builder.is_t1 )
      *decoder->glyph_width = cf2_fixedToInt( width );
  }
