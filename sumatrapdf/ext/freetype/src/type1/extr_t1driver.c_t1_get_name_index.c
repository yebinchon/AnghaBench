
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t num_glyphs; int ** glyph_names; } ;
struct TYPE_5__ {TYPE_1__ type1; } ;
typedef TYPE_2__* T1_Face ;
typedef int FT_UInt ;
typedef int FT_String ;
typedef size_t FT_Int ;


 int ft_strcmp (int *,int *) ;

__attribute__((used)) static FT_UInt
  t1_get_name_index( T1_Face face,
                     FT_String* glyph_name )
  {
    FT_Int i;


    for ( i = 0; i < face->type1.num_glyphs; i++ )
    {
      FT_String* gname = face->type1.glyph_names[i];


      if ( !ft_strcmp( glyph_name, gname ) )
        return (FT_UInt)i;
    }

    return 0;
  }
