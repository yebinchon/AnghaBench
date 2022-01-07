
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OTV_Validator ;
typedef int FT_UInt ;
typedef int FT_Int ;
typedef scalar_t__ FT_Bytes ;


 scalar_t__ Coverage ;
 int FT_NEXT_USHORT (scalar_t__) ;
 scalar_t__ MKRecordOffset ;
 int OTV_EXIT ;
 int OTV_LIMIT_CHECK (int) ;
 int OTV_NAME_ENTER (char*) ;
 int OTV_OPTIONAL_OFFSET (scalar_t__) ;
 int OTV_OPTIONAL_TABLE (scalar_t__) ;
 int OTV_SIZE_CHECK (scalar_t__) ;
 int otv_Coverage_validate (scalar_t__,int ,int ) ;
 int otv_MathKern_validate (scalar_t__,int ) ;

__attribute__((used)) static void
  otv_MathKernInfo_validate( FT_Bytes table,
                             OTV_Validator otvalid )
  {
    FT_Bytes p = table;
    FT_UInt i, j, cnt, table_size;

    OTV_OPTIONAL_TABLE( Coverage );
    OTV_OPTIONAL_TABLE( MKRecordOffset );


    OTV_NAME_ENTER( "MathKernInfo" );

    OTV_LIMIT_CHECK( 4 );

    OTV_OPTIONAL_OFFSET( Coverage );
    cnt = FT_NEXT_USHORT( p );

    OTV_LIMIT_CHECK( 8 * cnt );
    table_size = 4 + 8 * cnt;

    OTV_SIZE_CHECK( Coverage );
    otv_Coverage_validate( table + Coverage, otvalid, (FT_Int)cnt );

    for ( i = 0; i < cnt; i++ )
    {
      for ( j = 0; j < 4; j++ )
      {
        OTV_OPTIONAL_OFFSET( MKRecordOffset );
        OTV_SIZE_CHECK( MKRecordOffset );
        if ( MKRecordOffset )
          otv_MathKern_validate( table + MKRecordOffset, otvalid );
      }
    }

    OTV_EXIT;
  }
