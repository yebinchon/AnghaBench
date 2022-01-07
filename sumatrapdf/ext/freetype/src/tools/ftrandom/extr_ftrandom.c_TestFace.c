
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int outline; } ;
struct TYPE_8__ {unsigned int num_glyphs; TYPE_4__* glyph; } ;
typedef TYPE_1__* FT_Face ;


 int FT_Done_Face (TYPE_1__*) ;
 scalar_t__ FT_IS_SCALABLE (TYPE_1__*) ;
 int FT_LOAD_DEFAULT ;
 int FT_LOAD_NO_BITMAP ;
 int FT_LOAD_NO_HINTING ;
 int FT_Load_Glyph (TYPE_1__*,unsigned int,int) ;
 int FT_Outline_Decompose (int *,int *,int *) ;
 int FT_Render_Glyph (TYPE_4__*,int ) ;
 int FT_Set_Char_Size (TYPE_1__*,int ,int ,int,int) ;
 scalar_t__ check_outlines ;
 int font_size ;
 int ft_render_mode_normal ;
 scalar_t__ nohints ;
 int outlinefuncs ;
 scalar_t__ rasterize ;

__attribute__((used)) static void
  TestFace( FT_Face face )
  {
    unsigned int gid;
    int load_flags = FT_LOAD_DEFAULT;


    if ( check_outlines &&
         FT_IS_SCALABLE( face ) )
      load_flags = FT_LOAD_NO_BITMAP;

    if ( nohints )
      load_flags |= FT_LOAD_NO_HINTING;

    FT_Set_Char_Size( face, 0, font_size, 72, 72 );

    for ( gid = 0; gid < face->num_glyphs; gid++ )
    {
      if ( check_outlines &&
           FT_IS_SCALABLE( face ) )
      {
        if ( !FT_Load_Glyph( face, gid, load_flags ) )
          FT_Outline_Decompose( &face->glyph->outline, &outlinefuncs, ((void*)0) );
      }
      else
        FT_Load_Glyph( face, gid, load_flags );

      if ( rasterize )
        FT_Render_Glyph( face->glyph, ft_render_mode_normal );
    }

    FT_Done_Face( face );
  }
