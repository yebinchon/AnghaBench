
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* glyph; } ;
struct TYPE_7__ {scalar_t__ x; scalar_t__ y; } ;
struct TYPE_9__ {TYPE_1__ advance; } ;
struct TYPE_8__ {TYPE_4__* face; } ;
typedef TYPE_2__* GXV_Validator ;
typedef int FT_UShort ;
typedef scalar_t__ FT_Pos ;
typedef TYPE_3__* FT_GlyphSlot ;
typedef TYPE_4__* FT_Face ;
typedef scalar_t__ FT_Error ;


 int FT_INVALID_DATA ;
 int FT_INVALID_GLYPH_ID ;
 int FT_LOAD_IGNORE_TRANSFORM ;
 scalar_t__ FT_Load_Glyph (TYPE_4__*,int ,int ) ;
 int GXV_EXIT ;
 int GXV_NAME_ENTER (char*) ;
 int GXV_TRACE (char*) ;

__attribute__((used)) static void
  gxv_prop_zero_advance_validate( FT_UShort gid,
                                  GXV_Validator gxvalid )
  {
    FT_Face face;
    FT_Error error;
    FT_GlyphSlot glyph;


    GXV_NAME_ENTER( "zero advance" );

    face = gxvalid->face;

    error = FT_Load_Glyph( face,
                           gid,
                           FT_LOAD_IGNORE_TRANSFORM );
    if ( error )
      FT_INVALID_GLYPH_ID;

    glyph = face->glyph;

    if ( glyph->advance.x != (FT_Pos)0 ||
         glyph->advance.y != (FT_Pos)0 )
    {
      GXV_TRACE(( "  found non-zero advance in zero-advance glyph\n" ));
      FT_INVALID_DATA;
    }

    GXV_EXIT;
  }
