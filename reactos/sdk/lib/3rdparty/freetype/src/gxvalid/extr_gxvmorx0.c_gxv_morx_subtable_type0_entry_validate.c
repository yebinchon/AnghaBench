
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GXV_XStateTable_GlyphOffsetCPtr ;
typedef int GXV_Validator ;
typedef int FT_UShort ;
typedef int FT_Bytes ;


 int FT_INVALID_DATA ;
 int FT_UNUSED (int) ;
 int GXV_TRACE (char*) ;

__attribute__((used)) static void
  gxv_morx_subtable_type0_entry_validate(
    FT_UShort state,
    FT_UShort flags,
    GXV_XStateTable_GlyphOffsetCPtr glyphOffset_p,
    FT_Bytes table,
    FT_Bytes limit,
    GXV_Validator gxvalid )
  {





    FT_UShort reserved;




    FT_UNUSED( state );
    FT_UNUSED( glyphOffset_p );
    FT_UNUSED( table );
    FT_UNUSED( limit );
    reserved = (FT_UShort)( flags & 0x1FF0 );




    if ( 0 < reserved )
    {
      GXV_TRACE(( " non-zero bits found in reserved range\n" ));
      FT_INVALID_DATA;
    }
  }
