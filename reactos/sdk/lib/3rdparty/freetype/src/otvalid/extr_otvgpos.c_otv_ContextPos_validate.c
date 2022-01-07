
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lookup_count; int extra1; } ;
typedef TYPE_1__* OTV_Validator ;
typedef int FT_UInt ;
typedef int FT_Bytes ;


 int ContextPosFormat1 ;
 int ContextPosFormat2 ;
 int ContextPosFormat3 ;
 int FT_INVALID_FORMAT ;
 int FT_NEXT_USHORT (int ) ;
 int OTV_EXIT ;
 int OTV_LIMIT_CHECK (int) ;
 int OTV_NAME_ENTER (char*) ;
 int OTV_NEST1 (int ) ;
 int OTV_NEST3 (int ,int ,int ) ;
 int OTV_RUN (int ,TYPE_1__*) ;
 int OTV_TRACE (char*) ;
 int PosClassRule ;
 int PosClassSet ;
 int PosRule ;
 int PosRuleSet ;

__attribute__((used)) static void
  otv_ContextPos_validate( FT_Bytes table,
                           OTV_Validator otvalid )
  {
    FT_Bytes p = table;
    FT_UInt PosFormat;


    OTV_NAME_ENTER( "ContextPos" );

    OTV_LIMIT_CHECK( 2 );
    PosFormat = FT_NEXT_USHORT( p );

    OTV_TRACE(( " (format %d)\n", PosFormat ));

    switch ( PosFormat )
    {
    case 1:




      otvalid->extra1 = otvalid->lookup_count;
      OTV_NEST3( ContextPosFormat1, PosRuleSet, PosRule );
      OTV_RUN( table, otvalid );
      break;

    case 2:




      OTV_NEST3( ContextPosFormat2, PosClassSet, PosClassRule );
      OTV_RUN( table, otvalid );
      break;

    case 3:
      OTV_NEST1( ContextPosFormat3 );
      OTV_RUN( table, otvalid );
      break;

    default:
      FT_INVALID_FORMAT;
    }

    OTV_EXIT;
  }
