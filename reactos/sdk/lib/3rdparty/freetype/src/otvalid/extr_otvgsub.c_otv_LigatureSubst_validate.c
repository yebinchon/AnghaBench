
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OTV_Validator ;
typedef int FT_UInt ;
typedef int FT_Bytes ;


 int FT_INVALID_FORMAT ;
 int FT_NEXT_USHORT (int ) ;
 int Ligature ;
 int LigatureSet ;
 int LigatureSubstFormat1 ;
 int OTV_EXIT ;
 int OTV_LIMIT_CHECK (int) ;
 int OTV_NAME_ENTER (char*) ;
 int OTV_NEST3 (int ,int ,int ) ;
 int OTV_RUN (int ,int ) ;
 int OTV_TRACE (char*) ;

__attribute__((used)) static void
  otv_LigatureSubst_validate( FT_Bytes table,
                              OTV_Validator otvalid )
  {
    FT_Bytes p = table;
    FT_UInt SubstFormat;


    OTV_NAME_ENTER( "LigatureSubst" );

    OTV_LIMIT_CHECK( 2 );
    SubstFormat = FT_NEXT_USHORT( p );

    OTV_TRACE(( " (format %d)\n", SubstFormat ));

    switch ( SubstFormat )
    {
    case 1:
      OTV_NEST3( LigatureSubstFormat1, LigatureSet, Ligature );
      OTV_RUN( table, otvalid );
      break;

    default:
      FT_INVALID_FORMAT;
    }

    OTV_EXIT;
  }
