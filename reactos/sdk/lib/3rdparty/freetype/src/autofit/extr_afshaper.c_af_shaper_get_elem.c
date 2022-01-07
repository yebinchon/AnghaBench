
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* globals; } ;
struct TYPE_4__ {int face; } ;
typedef int FT_ULong ;
typedef scalar_t__ FT_Long ;
typedef int FT_Face ;
typedef TYPE_2__* AF_StyleMetrics ;


 int FT_Get_Advance (int ,int ,int,scalar_t__*) ;
 int FT_LOAD_IGNORE_TRANSFORM ;
 int FT_LOAD_NO_HINTING ;
 int FT_LOAD_NO_SCALE ;
 int FT_UNUSED (unsigned int) ;

FT_ULong
  af_shaper_get_elem( AF_StyleMetrics metrics,
                      void* buf_,
                      unsigned int idx,
                      FT_Long* advance,
                      FT_Long* y_offset )
  {
    FT_Face face = metrics->globals->face;
    FT_ULong glyph_index = *(FT_ULong*)buf_;

    FT_UNUSED( idx );


    if ( advance )
      FT_Get_Advance( face,
                      glyph_index,
                      FT_LOAD_NO_SCALE |
                      FT_LOAD_NO_HINTING |
                      FT_LOAD_IGNORE_TRANSFORM,
                      advance );

    if ( y_offset )
      *y_offset = 0;

    return glyph_index;
  }
