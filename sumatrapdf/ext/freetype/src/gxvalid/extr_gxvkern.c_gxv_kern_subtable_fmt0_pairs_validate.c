
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GXV_Validator ;
typedef scalar_t__ FT_UShort ;
typedef int FT_Short ;
typedef int FT_Bytes ;


 int FT_INVALID_DATA ;
 int FT_NEXT_SHORT (int) ;
 scalar_t__ FT_NEXT_USHORT (int) ;
 int FT_UNUSED (int) ;
 int GXV_EXIT ;
 int GXV_NAME_ENTER (char*) ;
 int GXV_TRACE (char*) ;
 int gxv_glyphid_validate (scalar_t__,int ) ;

__attribute__((used)) static void
  gxv_kern_subtable_fmt0_pairs_validate( FT_Bytes table,
                                         FT_Bytes limit,
                                         FT_UShort nPairs,
                                         GXV_Validator gxvalid )
  {
    FT_Bytes p = table;
    FT_UShort i;

    FT_UShort last_gid_left = 0;
    FT_UShort last_gid_right = 0;

    FT_UNUSED( limit );


    GXV_NAME_ENTER( "kern format 0 pairs" );

    for ( i = 0; i < nPairs; i++ )
    {
      FT_UShort gid_left;
      FT_UShort gid_right;






      gid_left = FT_NEXT_USHORT( p );
      gxv_glyphid_validate( gid_left, gxvalid );


      gid_right = FT_NEXT_USHORT( p );
      gxv_glyphid_validate( gid_right, gxvalid );


      GXV_TRACE(( "left gid = %u, right gid = %u\n", gid_left, gid_right ));
      if ( gid_left == last_gid_left )
      {
        if ( last_gid_right < gid_right )
          last_gid_right = gid_right;
        else
          FT_INVALID_DATA;
      }
      else if ( last_gid_left < gid_left )
      {
        last_gid_left = gid_left;
        last_gid_right = gid_right;
      }
      else
        FT_INVALID_DATA;





      p += 2;

    }

    GXV_EXIT;
  }
