
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OTV_Validator ;
typedef int FT_UInt ;
typedef int FT_Bytes ;


 int FT_NEXT_ULONG (int) ;
 int FT_NEXT_USHORT (int) ;
 int OTV_EXIT ;
 int OTV_LIMIT_CHECK (int) ;
 int OTV_NAME_ENTER (char*) ;
 int OTV_TRACE (char*) ;
 int otv_Coverage_validate (int,int ,int) ;

__attribute__((used)) static void
  otv_MarkGlyphSets_validate( FT_Bytes table,
                              OTV_Validator otvalid )
  {
    FT_Bytes p = table;
    FT_UInt MarkGlyphSetCount;


    OTV_NAME_ENTER( "MarkGlyphSets" );

    p += 2;

    OTV_LIMIT_CHECK( 2 );
    MarkGlyphSetCount = FT_NEXT_USHORT( p );

    OTV_TRACE(( " (MarkGlyphSetCount = %d)\n", MarkGlyphSetCount ));

    OTV_LIMIT_CHECK( MarkGlyphSetCount * 4 );

    for ( ; MarkGlyphSetCount > 0; MarkGlyphSetCount-- )
      otv_Coverage_validate( table + FT_NEXT_ULONG( p ), otvalid, -1 );

    OTV_EXIT;
  }
