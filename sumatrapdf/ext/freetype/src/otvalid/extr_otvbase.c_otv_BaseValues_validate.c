
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OTV_Validator ;
typedef int FT_UInt ;
typedef int FT_Bytes ;


 int FT_NEXT_USHORT (int) ;
 int OTV_EXIT ;
 int OTV_LIMIT_CHECK (int) ;
 int OTV_NAME_ENTER (char*) ;
 int OTV_TRACE (char*) ;
 int otv_BaseCoord_validate (int,int ) ;

__attribute__((used)) static void
  otv_BaseValues_validate( FT_Bytes table,
                           OTV_Validator otvalid )
  {
    FT_Bytes p = table;
    FT_UInt BaseCoordCount;


    OTV_NAME_ENTER( "BaseValues" );

    OTV_LIMIT_CHECK( 4 );

    p += 2;
    BaseCoordCount = FT_NEXT_USHORT( p );

    OTV_TRACE(( " (BaseCoordCount = %d)\n", BaseCoordCount ));

    OTV_LIMIT_CHECK( BaseCoordCount * 2 );


    for ( ; BaseCoordCount > 0; BaseCoordCount-- )
      otv_BaseCoord_validate( table + FT_NEXT_USHORT( p ), otvalid );

    OTV_EXIT;
  }
