
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ glyph_count; } ;
typedef TYPE_1__* OTV_Validator ;
typedef scalar_t__ FT_UInt ;
typedef int FT_Bytes ;


 int FT_INVALID_DATA ;
 scalar_t__ FT_NEXT_USHORT (int ) ;
 int OTV_ENTER ;
 int OTV_EXIT ;
 int OTV_LIMIT_CHECK (scalar_t__) ;
 int OTV_TRACE (char*) ;

__attribute__((used)) static void
  otv_Ligature_validate( FT_Bytes table,
                         OTV_Validator otvalid )
  {
    FT_Bytes p = table;
    FT_UInt LigatureGlyph, CompCount;


    OTV_ENTER;

    OTV_LIMIT_CHECK( 4 );
    LigatureGlyph = FT_NEXT_USHORT( p );
    if ( LigatureGlyph >= otvalid->glyph_count )
      FT_INVALID_DATA;

    CompCount = FT_NEXT_USHORT( p );

    OTV_TRACE(( " (CompCount = %d)\n", CompCount ));

    if ( CompCount == 0 )
      FT_INVALID_DATA;

    CompCount--;

    OTV_LIMIT_CHECK( CompCount * 2 );



    OTV_EXIT;
  }
