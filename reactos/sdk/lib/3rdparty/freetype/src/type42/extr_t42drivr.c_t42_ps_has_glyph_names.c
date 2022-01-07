
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FT_Int ;
typedef int FT_Face ;


 int FT_UNUSED (int ) ;

__attribute__((used)) static FT_Int
  t42_ps_has_glyph_names( FT_Face face )
  {
    FT_UNUSED( face );

    return 1;
  }
