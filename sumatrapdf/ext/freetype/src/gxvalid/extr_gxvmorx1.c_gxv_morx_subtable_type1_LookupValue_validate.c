
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int u; } ;
struct TYPE_7__ {TYPE_1__* face; } ;
struct TYPE_6__ {int num_glyphs; } ;
typedef TYPE_2__* GXV_Validator ;
typedef TYPE_3__* GXV_LookupValueCPtr ;
typedef int FT_UShort ;


 int FT_INVALID_GLYPH_ID ;
 int FT_UNUSED (int ) ;
 int GXV_TRACE (char*) ;

__attribute__((used)) static void
  gxv_morx_subtable_type1_LookupValue_validate( FT_UShort glyph,
                                                GXV_LookupValueCPtr value_p,
                                                GXV_Validator gxvalid )
  {
    FT_UNUSED( glyph );

    GXV_TRACE(( "morx subtable type1 subst.: %d -> %d\n", glyph, value_p->u ));

    if ( value_p->u > gxvalid->face->num_glyphs )
      FT_INVALID_GLYPH_ID;
  }
