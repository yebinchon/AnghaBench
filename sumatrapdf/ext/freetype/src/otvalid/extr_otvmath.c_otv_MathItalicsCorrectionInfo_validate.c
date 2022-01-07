
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OTV_Validator ;
typedef int FT_UInt ;
typedef scalar_t__ FT_Int ;
typedef int FT_Bytes ;


 int Coverage ;
 int DeviceTableOffset ;
 int FT_NEXT_USHORT (int) ;
 int FT_UNUSED (scalar_t__) ;
 int OTV_EXIT ;
 int OTV_LIMIT_CHECK (int) ;
 int OTV_NAME_ENTER (char*) ;
 int OTV_OPTIONAL_OFFSET (int) ;
 int OTV_OPTIONAL_TABLE (int) ;
 int OTV_SIZE_CHECK (int) ;
 int otv_Coverage_validate (int,int ,scalar_t__) ;
 int otv_Device_validate (int,int ) ;

__attribute__((used)) static void
  otv_MathItalicsCorrectionInfo_validate( FT_Bytes table,
                                          OTV_Validator otvalid,
                                          FT_Int isItalic )
  {
    FT_Bytes p = table;
    FT_UInt i, cnt, table_size;

    OTV_OPTIONAL_TABLE( Coverage );
    OTV_OPTIONAL_TABLE( DeviceTableOffset );

    FT_UNUSED( isItalic );


    OTV_NAME_ENTER( isItalic ? "MathItalicsCorrectionInfo"
                             : "MathTopAccentAttachment" );

    OTV_LIMIT_CHECK( 4 );

    OTV_OPTIONAL_OFFSET( Coverage );
    cnt = FT_NEXT_USHORT( p );

    OTV_LIMIT_CHECK( 4 * cnt );
    table_size = 4 + 4 * cnt;

    OTV_SIZE_CHECK( Coverage );
    otv_Coverage_validate( table + Coverage, otvalid, (FT_Int)cnt );

    for ( i = 0; i < cnt; i++ )
    {
      p += 2;
      OTV_OPTIONAL_OFFSET( DeviceTableOffset );
      OTV_SIZE_CHECK( DeviceTableOffset );
      if ( DeviceTableOffset )
        otv_Device_validate( table + DeviceTableOffset, otvalid );
    }

    OTV_EXIT;
  }
