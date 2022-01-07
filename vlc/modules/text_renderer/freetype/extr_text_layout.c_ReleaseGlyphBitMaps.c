
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ p_outline; scalar_t__ p_glyph; } ;
typedef TYPE_1__ glyph_bitmaps_t ;


 int FT_Done_Glyph (scalar_t__) ;

__attribute__((used)) static inline void ReleaseGlyphBitMaps(glyph_bitmaps_t *p_bitmaps)
{
    if( p_bitmaps->p_glyph )
        FT_Done_Glyph( p_bitmaps->p_glyph );
    if( p_bitmaps->p_outline )
        FT_Done_Glyph( p_bitmaps->p_outline );
}
