
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ul; } ;
typedef int GXV_Validator ;
typedef TYPE_1__* GXV_StateTable_GlyphOffsetCPtr ;
typedef int FT_UShort ;
typedef scalar_t__ FT_Short ;
typedef int FT_Bytes ;
typedef int FT_Byte ;


 int FT_INVALID_DATA ;
 int FT_UNUSED (int ) ;
 int GXV_SET_ERR_IF_PARANOID (int ) ;
 int GXV_TRACE (char*) ;
 int gxv_mort_subtable_type1_offset_to_subst_validate (scalar_t__,char*,int ,int ) ;

__attribute__((used)) static void
  gxv_mort_subtable_type1_entry_validate(
    FT_Byte state,
    FT_UShort flags,
    GXV_StateTable_GlyphOffsetCPtr glyphOffset_p,
    FT_Bytes table,
    FT_Bytes limit,
    GXV_Validator gxvalid )
  {




    FT_UShort reserved;
    FT_Short markOffset;
    FT_Short currentOffset;

    FT_UNUSED( table );
    FT_UNUSED( limit );






    reserved = (FT_UShort)( flags & 0x3FFF );

    markOffset = (FT_Short)( glyphOffset_p->ul >> 16 );
    currentOffset = (FT_Short)( glyphOffset_p->ul );

    if ( 0 < reserved )
    {
      GXV_TRACE(( " non-zero bits found in reserved range\n" ));
      GXV_SET_ERR_IF_PARANOID( FT_INVALID_DATA );
    }

    gxv_mort_subtable_type1_offset_to_subst_validate( markOffset,
                                                      "markOffset",
                                                      state,
                                                      gxvalid );

    gxv_mort_subtable_type1_offset_to_subst_validate( currentOffset,
                                                      "currentOffset",
                                                      state,
                                                      gxvalid );
  }
