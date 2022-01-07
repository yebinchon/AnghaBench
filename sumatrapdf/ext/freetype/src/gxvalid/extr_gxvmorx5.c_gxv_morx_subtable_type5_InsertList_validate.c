
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GXV_Validator ;
typedef int FT_UShort ;
typedef scalar_t__ FT_Bytes ;


 int FT_NEXT_USHORT (scalar_t__) ;
 int GXV_LIMIT_CHECK (int) ;
 int GXV_TRACE (char*) ;

__attribute__((used)) static void
  gxv_morx_subtable_type5_InsertList_validate( FT_UShort table_index,
                                               FT_UShort count,
                                               FT_Bytes table,
                                               FT_Bytes limit,
                                               GXV_Validator gxvalid )
  {
    FT_Bytes p = table + table_index * 2;



    GXV_LIMIT_CHECK( count * 2 );
  }
