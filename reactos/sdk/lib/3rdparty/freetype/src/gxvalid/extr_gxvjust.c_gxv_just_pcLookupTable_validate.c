
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lookupval_func; int lookupval_sign; } ;
typedef TYPE_1__* GXV_Validator ;
typedef int GXV_JUST_DATA ;
typedef int FT_Bytes ;


 int GXV_EXIT ;
 int GXV_LOOKUPVALUE_UNSIGNED ;
 int GXV_NAME_ENTER (char*) ;
 int gxv_LookupTable_validate (int ,int ,TYPE_1__*) ;
 int gxv_just_pcTable_LookupValue_entry_validate ;

__attribute__((used)) static void
  gxv_just_pcLookupTable_validate( FT_Bytes table,
                                   FT_Bytes limit,
                                   GXV_Validator gxvalid )
  {
    FT_Bytes p = table;


    GXV_NAME_ENTER( "just pcLookupTable" );
    GXV_JUST_DATA( pc_offset_max ) = 0x0000;
    GXV_JUST_DATA( pc_offset_min ) = 0xFFFFU;

    gxvalid->lookupval_sign = GXV_LOOKUPVALUE_UNSIGNED;
    gxvalid->lookupval_func = gxv_just_pcTable_LookupValue_entry_validate;

    gxv_LookupTable_validate( p, limit, gxvalid );



    GXV_EXIT;
  }
