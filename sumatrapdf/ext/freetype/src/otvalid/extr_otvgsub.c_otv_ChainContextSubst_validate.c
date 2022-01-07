
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lookup_count; int extra1; } ;
typedef TYPE_1__* OTV_Validator ;
typedef int FT_UInt ;
typedef int FT_Bytes ;


 int ChainContextSubstFormat1 ;
 int ChainContextSubstFormat2 ;
 int ChainContextSubstFormat3 ;
 int ChainSubClassRule ;
 int ChainSubClassSet ;
 int ChainSubRule ;
 int ChainSubRuleSet ;
 int FT_INVALID_FORMAT ;
 int FT_NEXT_USHORT (int ) ;
 int OTV_EXIT ;
 int OTV_LIMIT_CHECK (int) ;
 int OTV_NAME_ENTER (char*) ;
 int OTV_NEST1 (int ) ;
 int OTV_NEST3 (int ,int ,int ) ;
 int OTV_RUN (int ,TYPE_1__*) ;
 int OTV_TRACE (char*) ;

__attribute__((used)) static void
  otv_ChainContextSubst_validate( FT_Bytes table,
                                  OTV_Validator otvalid )
  {
    FT_Bytes p = table;
    FT_UInt SubstFormat;


    OTV_NAME_ENTER( "ChainContextSubst" );

    OTV_LIMIT_CHECK( 2 );
    SubstFormat = FT_NEXT_USHORT( p );

    OTV_TRACE(( " (format %d)\n", SubstFormat ));

    switch ( SubstFormat )
    {
    case 1:




      otvalid->extra1 = otvalid->lookup_count;
      OTV_NEST3( ChainContextSubstFormat1,
                 ChainSubRuleSet, ChainSubRule );
      OTV_RUN( table, otvalid );
      break;

    case 2:




      OTV_NEST3( ChainContextSubstFormat2,
                 ChainSubClassSet, ChainSubClassRule );
      OTV_RUN( table, otvalid );
      break;

    case 3:
      OTV_NEST1( ChainContextSubstFormat3 );
      OTV_RUN( table, otvalid );
      break;

    default:
      FT_INVALID_FORMAT;
    }

    OTV_EXIT;
  }
