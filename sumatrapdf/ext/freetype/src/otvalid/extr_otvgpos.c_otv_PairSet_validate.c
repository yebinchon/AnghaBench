
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int extra3; } ;
typedef TYPE_1__* OTV_Validator ;
typedef int FT_UInt ;
typedef int FT_Bytes ;


 int FT_NEXT_USHORT (int) ;
 int OTV_EXIT ;
 int OTV_LIMIT_CHECK (int) ;
 int OTV_NAME_ENTER (char*) ;
 int OTV_TRACE (char*) ;
 int otv_ValueRecord_validate (int,int,TYPE_1__*) ;
 int otv_value_length (int) ;

__attribute__((used)) static void
  otv_PairSet_validate( FT_Bytes table,
                        FT_UInt format1,
                        FT_UInt format2,
                        OTV_Validator otvalid )
  {
    FT_Bytes p = table;
    FT_UInt value_len1, value_len2, PairValueCount;


    OTV_NAME_ENTER( "PairSet" );

    otvalid->extra3 = table;

    OTV_LIMIT_CHECK( 2 );
    PairValueCount = FT_NEXT_USHORT( p );

    OTV_TRACE(( " (PairValueCount = %d)\n", PairValueCount ));

    value_len1 = otv_value_length( format1 );
    value_len2 = otv_value_length( format2 );

    OTV_LIMIT_CHECK( PairValueCount * ( value_len1 + value_len2 + 2 ) );


    for ( ; PairValueCount > 0; PairValueCount-- )
    {
      p += 2;

      if ( format1 )
        otv_ValueRecord_validate( p, format1, otvalid );
      p += value_len1;

      if ( format2 )
        otv_ValueRecord_validate( p, format2, otvalid );
      p += value_len2;
    }

    OTV_EXIT;
  }
