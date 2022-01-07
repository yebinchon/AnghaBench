
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
 int otv_BaseScript_validate (int,int ) ;

__attribute__((used)) static void
  otv_BaseScriptList_validate( FT_Bytes table,
                               OTV_Validator otvalid )
  {
    FT_Bytes p = table;
    FT_UInt BaseScriptCount;


    OTV_NAME_ENTER( "BaseScriptList" );

    OTV_LIMIT_CHECK( 2 );
    BaseScriptCount = FT_NEXT_USHORT( p );

    OTV_TRACE(( " (BaseScriptCount = %d)\n", BaseScriptCount ));

    OTV_LIMIT_CHECK( BaseScriptCount * 6 );


    for ( ; BaseScriptCount > 0; BaseScriptCount-- )
    {
      p += 4;


      otv_BaseScript_validate( table + FT_NEXT_USHORT( p ), otvalid );
    }

    OTV_EXIT;
  }
