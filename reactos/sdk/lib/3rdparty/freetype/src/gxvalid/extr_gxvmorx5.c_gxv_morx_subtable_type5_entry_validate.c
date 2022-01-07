
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ul; } ;
typedef int GXV_Validator ;
typedef TYPE_1__* GXV_StateTable_GlyphOffsetCPtr ;
typedef int FT_UShort ;
typedef int FT_Bytes ;
typedef scalar_t__ FT_Byte ;
typedef int FT_Bool ;


 int FT_BOOL (int) ;
 int FT_UNUSED (int) ;
 int gxv_morx_subtable_type5_InsertList_validate (int,scalar_t__,int ,int ,int ) ;

__attribute__((used)) static void
  gxv_morx_subtable_type5_entry_validate(
    FT_UShort state,
    FT_UShort flags,
    GXV_StateTable_GlyphOffsetCPtr glyphOffset_p,
    FT_Bytes table,
    FT_Bytes limit,
    GXV_Validator gxvalid )
  {
    FT_Byte currentInsertCount;
    FT_Byte markedInsertCount;
    FT_Byte currentInsertList;
    FT_UShort markedInsertList;

    FT_UNUSED( state );
    currentInsertCount = (FT_Byte)( ( flags >> 5 ) & 0x1F );
    markedInsertCount = (FT_Byte)( flags & 0x001F );

    currentInsertList = (FT_Byte) ( glyphOffset_p->ul >> 16 );
    markedInsertList = (FT_UShort)( glyphOffset_p->ul );

    if ( currentInsertList && 0 != currentInsertCount )
      gxv_morx_subtable_type5_InsertList_validate( currentInsertList,
                                                   currentInsertCount,
                                                   table, limit,
                                                   gxvalid );

    if ( markedInsertList && 0 != markedInsertCount )
      gxv_morx_subtable_type5_InsertList_validate( markedInsertList,
                                                   markedInsertCount,
                                                   table, limit,
                                                   gxvalid );
  }
