
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int x; scalar_t__ y; } ;
struct TYPE_7__ {int (* get_kerning ) (TYPE_1__*,int ,int ) ;} ;
struct TYPE_6__ {int sfnt; } ;
typedef TYPE_1__* TT_Face ;
typedef TYPE_2__* SFNT_Service ;
typedef TYPE_3__ FT_Vector ;
typedef int FT_UInt ;
typedef int FT_Face ;
typedef int FT_Error ;


 int stub1 (TYPE_1__*,int ,int ) ;

__attribute__((used)) static FT_Error
  tt_get_kerning( FT_Face ttface,
                  FT_UInt left_glyph,
                  FT_UInt right_glyph,
                  FT_Vector* kerning )
  {
    TT_Face face = (TT_Face)ttface;
    SFNT_Service sfnt = (SFNT_Service)face->sfnt;


    kerning->x = 0;
    kerning->y = 0;

    if ( sfnt )
      kerning->x = sfnt->get_kerning( face, left_glyph, right_glyph );

    return 0;
  }
