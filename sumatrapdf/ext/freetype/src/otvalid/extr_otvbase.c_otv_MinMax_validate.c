
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OTV_Validator ;
typedef int FT_UInt ;
typedef int FT_Bytes ;


 int FT_NEXT_USHORT (int) ;
 int MaxCoord ;
 int MinCoord ;
 int OTV_EXIT ;
 int OTV_LIMIT_CHECK (int) ;
 int OTV_NAME_ENTER (char*) ;
 int OTV_OPTIONAL_OFFSET (int) ;
 int OTV_OPTIONAL_TABLE (int) ;
 int OTV_SIZE_CHECK (int) ;
 int OTV_TRACE (char*) ;
 int otv_BaseCoord_validate (int,int ) ;

__attribute__((used)) static void
  otv_MinMax_validate( FT_Bytes table,
                       OTV_Validator otvalid )
  {
    FT_Bytes p = table;
    FT_UInt table_size;
    FT_UInt FeatMinMaxCount;

    OTV_OPTIONAL_TABLE( MinCoord );
    OTV_OPTIONAL_TABLE( MaxCoord );


    OTV_NAME_ENTER( "MinMax" );

    OTV_LIMIT_CHECK( 6 );

    OTV_OPTIONAL_OFFSET( MinCoord );
    OTV_OPTIONAL_OFFSET( MaxCoord );
    FeatMinMaxCount = FT_NEXT_USHORT( p );

    OTV_TRACE(( " (FeatMinMaxCount = %d)\n", FeatMinMaxCount ));

    table_size = FeatMinMaxCount * 8 + 6;

    OTV_SIZE_CHECK( MinCoord );
    if ( MinCoord )
      otv_BaseCoord_validate( table + MinCoord, otvalid );

    OTV_SIZE_CHECK( MaxCoord );
    if ( MaxCoord )
      otv_BaseCoord_validate( table + MaxCoord, otvalid );

    OTV_LIMIT_CHECK( FeatMinMaxCount * 8 );


    for ( ; FeatMinMaxCount > 0; FeatMinMaxCount-- )
    {
      p += 4;

      OTV_OPTIONAL_OFFSET( MinCoord );
      OTV_OPTIONAL_OFFSET( MaxCoord );

      OTV_SIZE_CHECK( MinCoord );
      if ( MinCoord )
        otv_BaseCoord_validate( table + MinCoord, otvalid );

      OTV_SIZE_CHECK( MaxCoord );
      if ( MaxCoord )
        otv_BaseCoord_validate( table + MaxCoord, otvalid );
    }

    OTV_EXIT;
  }
