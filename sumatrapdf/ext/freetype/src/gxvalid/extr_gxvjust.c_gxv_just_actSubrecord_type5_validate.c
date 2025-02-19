
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ subtable_length; } ;
typedef TYPE_1__* GXV_Validator ;
typedef scalar_t__ FT_UShort ;
typedef scalar_t__ FT_ULong ;
typedef scalar_t__ FT_Bytes ;


 scalar_t__ FT_NEXT_USHORT (scalar_t__) ;
 int GXV_LIMIT_CHECK (int) ;
 int GXV_TRACE (char*) ;
 int gxv_just_check_max_gid (scalar_t__,char*,TYPE_1__*) ;

__attribute__((used)) static void
  gxv_just_actSubrecord_type5_validate( FT_Bytes table,
                                        FT_Bytes limit,
                                        GXV_Validator gxvalid )
  {
    FT_Bytes p = table;
    FT_UShort flags;
    FT_UShort glyph;


    GXV_LIMIT_CHECK( 2 + 2 );
    flags = FT_NEXT_USHORT( p );
    glyph = FT_NEXT_USHORT( p );

    if ( flags )
      GXV_TRACE(( "type5: nonzero value 0x%04x in unused flags\n",
                   flags ));
    gxv_just_check_max_gid( glyph, "type5:glyph", gxvalid );

    gxvalid->subtable_length = (FT_ULong)( p - table );
  }
