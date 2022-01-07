
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
 int otv_Anchor_validate (int,int ) ;

__attribute__((used)) static void
  otv_MarkArray_validate( FT_Bytes table,
                          OTV_Validator otvalid )
  {
    FT_Bytes p = table;
    FT_UInt MarkCount;


    OTV_NAME_ENTER( "MarkArray" );

    OTV_LIMIT_CHECK( 2 );
    MarkCount = FT_NEXT_USHORT( p );

    OTV_TRACE(( " (MarkCount = %d)\n", MarkCount ));

    OTV_LIMIT_CHECK( MarkCount * 4 );


    for ( ; MarkCount > 0; MarkCount-- )
    {
      p += 2;

      otv_Anchor_validate( table + FT_NEXT_USHORT( p ), otvalid );
    }

    OTV_EXIT;
  }
