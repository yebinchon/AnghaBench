
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int glyph_count; int extra1; } ;
typedef TYPE_1__* OTV_Validator ;
typedef int FT_UInt ;
typedef int FT_Bytes ;


 int FT_INVALID_FORMAT ;
 int FT_NEXT_USHORT (int ) ;
 int MultipleSubstFormat1 ;
 int OTV_EXIT ;
 int OTV_LIMIT_CHECK (int) ;
 int OTV_NAME_ENTER (char*) ;
 int OTV_NEST2 (int ,int ) ;
 int OTV_RUN (int ,TYPE_1__*) ;
 int OTV_TRACE (char*) ;
 int Sequence ;

__attribute__((used)) static void
  otv_MultipleSubst_validate( FT_Bytes table,
                              OTV_Validator otvalid )
  {
    FT_Bytes p = table;
    FT_UInt SubstFormat;


    OTV_NAME_ENTER( "MultipleSubst" );

    OTV_LIMIT_CHECK( 2 );
    SubstFormat = FT_NEXT_USHORT( p );

    OTV_TRACE(( " (format %d)\n", SubstFormat ));

    switch ( SubstFormat )
    {
    case 1:
      otvalid->extra1 = otvalid->glyph_count;
      OTV_NEST2( MultipleSubstFormat1, Sequence );
      OTV_RUN( table, otvalid );
      break;

    default:
      FT_INVALID_FORMAT;
    }

    OTV_EXIT;
  }
