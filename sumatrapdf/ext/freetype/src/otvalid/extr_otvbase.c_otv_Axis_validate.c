
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OTV_Validator ;
typedef int FT_UInt ;
typedef scalar_t__ FT_Bytes ;


 scalar_t__ BaseTagList ;
 scalar_t__ FT_NEXT_USHORT (scalar_t__) ;
 int OTV_EXIT ;
 int OTV_LIMIT_CHECK (int) ;
 int OTV_NAME_ENTER (char*) ;
 int OTV_OPTIONAL_OFFSET (scalar_t__) ;
 int OTV_OPTIONAL_TABLE (scalar_t__) ;
 int OTV_SIZE_CHECK (scalar_t__) ;
 int otv_BaseScriptList_validate (scalar_t__,int ) ;
 int otv_BaseTagList_validate (scalar_t__,int ) ;

__attribute__((used)) static void
  otv_Axis_validate( FT_Bytes table,
                     OTV_Validator otvalid )
  {
    FT_Bytes p = table;
    FT_UInt table_size;

    OTV_OPTIONAL_TABLE( BaseTagList );


    OTV_NAME_ENTER( "Axis" );

    OTV_LIMIT_CHECK( 4 );
    OTV_OPTIONAL_OFFSET( BaseTagList );

    table_size = 4;

    OTV_SIZE_CHECK( BaseTagList );
    if ( BaseTagList )
      otv_BaseTagList_validate( table + BaseTagList, otvalid );


    otv_BaseScriptList_validate( table + FT_NEXT_USHORT( p ), otvalid );

    OTV_EXIT;
  }
