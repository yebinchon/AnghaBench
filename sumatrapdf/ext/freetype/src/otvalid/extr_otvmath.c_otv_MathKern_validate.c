
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OTV_Validator ;
typedef int FT_UInt ;
typedef int FT_Bytes ;


 int DeviceTableOffset ;
 int FT_NEXT_USHORT (int) ;
 int OTV_EXIT ;
 int OTV_LIMIT_CHECK (int) ;
 int OTV_OPTIONAL_OFFSET (int) ;
 int OTV_OPTIONAL_TABLE (int) ;
 int OTV_SIZE_CHECK (int) ;
 int otv_Device_validate (int,int ) ;

__attribute__((used)) static void
  otv_MathKern_validate( FT_Bytes table,
                         OTV_Validator otvalid )
  {
    FT_Bytes p = table;
    FT_UInt i, cnt, table_size;

    OTV_OPTIONAL_TABLE( DeviceTableOffset );




    OTV_LIMIT_CHECK( 2 );

    cnt = FT_NEXT_USHORT( p );

    OTV_LIMIT_CHECK( 4 * cnt + 2 );
    table_size = 4 + 4 * cnt;


    for ( i = 0; i < cnt; i++ )
    {
      p += 2;
      OTV_OPTIONAL_OFFSET( DeviceTableOffset );
      OTV_SIZE_CHECK( DeviceTableOffset );
      if ( DeviceTableOffset )
        otv_Device_validate( table + DeviceTableOffset, otvalid );
    }


    for ( i = 0; i < cnt + 1; i++ )
    {
      p += 2;
      OTV_OPTIONAL_OFFSET( DeviceTableOffset );
      OTV_SIZE_CHECK( DeviceTableOffset );
      if ( DeviceTableOffset )
        otv_Device_validate( table + DeviceTableOffset, otvalid );
    }

    OTV_EXIT;
  }
