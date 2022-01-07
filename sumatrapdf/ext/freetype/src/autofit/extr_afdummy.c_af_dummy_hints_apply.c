
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FT_UInt ;
typedef int FT_Outline ;
typedef int FT_Error ;
typedef int AF_StyleMetrics ;
typedef int AF_GlyphHints ;


 int FT_UNUSED (int ) ;
 int af_glyph_hints_reload (int ,int *) ;
 int af_glyph_hints_save (int ,int *) ;

__attribute__((used)) static FT_Error
  af_dummy_hints_apply( FT_UInt glyph_index,
                        AF_GlyphHints hints,
                        FT_Outline* outline,
                        AF_StyleMetrics metrics )
  {
    FT_Error error;

    FT_UNUSED( glyph_index );
    FT_UNUSED( metrics );


    error = af_glyph_hints_reload( hints, outline );
    if ( !error )
      af_glyph_hints_save( hints, outline );

    return error;
  }
