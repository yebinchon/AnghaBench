
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lookupfmt4_trans; int lookupval_func; int lookupval_sign; } ;
typedef TYPE_1__* GXV_Validator ;
typedef scalar_t__ FT_Bytes ;


 int GXV_BSLN_VALUE_COUNT ;
 int GXV_EXIT ;
 int GXV_LOOKUPVALUE_UNSIGNED ;
 int GXV_NAME_ENTER (char*) ;
 int gxv_LookupTable_validate (scalar_t__,scalar_t__,TYPE_1__*) ;
 int gxv_bsln_LookupFmt4_transit ;
 int gxv_bsln_LookupValue_validate ;
 int gxv_bsln_parts_fmt0_validate (scalar_t__,scalar_t__,TYPE_1__*) ;

__attribute__((used)) static void
  gxv_bsln_parts_fmt1_validate( FT_Bytes tables,
                                FT_Bytes limit,
                                GXV_Validator gxvalid )
  {
    FT_Bytes p = tables;


    GXV_NAME_ENTER( "parts format 1" );


    gxv_bsln_parts_fmt0_validate( p, limit, gxvalid );


    gxvalid->lookupval_sign = GXV_LOOKUPVALUE_UNSIGNED;
    gxvalid->lookupval_func = gxv_bsln_LookupValue_validate;
    gxvalid->lookupfmt4_trans = gxv_bsln_LookupFmt4_transit;
    gxv_LookupTable_validate( p + 2 * GXV_BSLN_VALUE_COUNT,
                              limit,
                              gxvalid );

    GXV_EXIT;
  }
