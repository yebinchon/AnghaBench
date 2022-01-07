
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ num_fixed_sizes; int available_sizes; } ;
typedef int FT_Memory ;
typedef TYPE_1__* FT_Face ;
typedef int FNT_Face ;


 int FT_FACE_MEMORY (int ) ;
 int FT_FREE (int ) ;
 int fnt_font_done (int ) ;

__attribute__((used)) static void
  FNT_Face_Done( FT_Face fntface )
  {
    FNT_Face face = (FNT_Face)fntface;
    FT_Memory memory;


    if ( !face )
      return;

    memory = FT_FACE_MEMORY( face );

    fnt_font_done( face );

    FT_FREE( fntface->available_sizes );
    fntface->num_fixed_sizes = 0;
  }
