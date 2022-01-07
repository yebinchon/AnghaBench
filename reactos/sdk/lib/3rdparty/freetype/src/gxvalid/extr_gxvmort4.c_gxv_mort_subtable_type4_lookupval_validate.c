
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int u; } ;
typedef int GXV_Validator ;
typedef TYPE_1__* GXV_LookupValueCPtr ;
typedef int FT_UShort ;


 int FT_UNUSED (int ) ;
 int gxv_glyphid_validate (int ,int ) ;

__attribute__((used)) static void
  gxv_mort_subtable_type4_lookupval_validate( FT_UShort glyph,
                                              GXV_LookupValueCPtr value_p,
                                              GXV_Validator gxvalid )
  {
    FT_UNUSED( glyph );

    gxv_glyphid_validate( value_p->u, gxvalid );
  }
