
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GXV_Validator ;
typedef int FT_UShort ;
typedef int FT_Bytes ;


 int GXV_EXIT ;
 int GXV_KERN_SUBTABLE_HEADER_SIZE ;
 int GXV_LIMIT_CHECK (int) ;
 int GXV_NAME_ENTER (char*) ;
 int gxv_BinSrchHeader_validate (int,int,int*,int*,int ) ;
 int gxv_kern_subtable_fmt0_pairs_validate (int,int,int,int ) ;

__attribute__((used)) static void
  gxv_kern_subtable_fmt0_validate( FT_Bytes table,
                                   FT_Bytes limit,
                                   GXV_Validator gxvalid )
  {
    FT_Bytes p = table + GXV_KERN_SUBTABLE_HEADER_SIZE;

    FT_UShort nPairs;
    FT_UShort unitSize;


    GXV_NAME_ENTER( "kern subtable format 0" );

    unitSize = 2 + 2 + 2;
    nPairs = 0;


    GXV_LIMIT_CHECK( 2 + 2 + 2 + 2 );
    gxv_BinSrchHeader_validate( p, limit, &unitSize, &nPairs, gxvalid );
    p += 2 + 2 + 2 + 2;

    gxv_kern_subtable_fmt0_pairs_validate( p, limit, nPairs, gxvalid );

    GXV_EXIT;
  }
