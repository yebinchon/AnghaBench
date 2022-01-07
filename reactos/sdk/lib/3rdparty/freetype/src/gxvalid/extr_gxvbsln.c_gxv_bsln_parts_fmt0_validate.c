
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * table_data; } ;
typedef TYPE_1__* GXV_Validator ;
typedef int FT_Bytes ;


 int GXV_BSLN_VALUE_COUNT ;
 int GXV_EXIT ;
 int GXV_LIMIT_CHECK (int) ;
 int GXV_NAME_ENTER (char*) ;

__attribute__((used)) static void
  gxv_bsln_parts_fmt0_validate( FT_Bytes tables,
                                FT_Bytes limit,
                                GXV_Validator gxvalid )
  {
    FT_Bytes p = tables;


    GXV_NAME_ENTER( "parts format 0" );


    GXV_LIMIT_CHECK( 2 * GXV_BSLN_VALUE_COUNT );

    gxvalid->table_data = ((void*)0);

    GXV_EXIT;
  }
