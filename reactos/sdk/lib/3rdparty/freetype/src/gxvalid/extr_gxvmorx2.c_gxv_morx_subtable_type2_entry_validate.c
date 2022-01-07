
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int u; } ;
typedef int GXV_Validator ;
typedef TYPE_1__* GXV_StateTable_GlyphOffsetCPtr ;
typedef int FT_UShort ;
typedef int FT_Bytes ;


 int FT_UNUSED (int) ;
 int GXV_TRACE (char*) ;
 int gxv_morx_subtable_type2_ligActionIndex_validate (int,int,int ) ;

__attribute__((used)) static void
  gxv_morx_subtable_type2_entry_validate(
    FT_UShort state,
    FT_UShort flags,
    GXV_StateTable_GlyphOffsetCPtr glyphOffset_p,
    FT_Bytes table,
    FT_Bytes limit,
    GXV_Validator gxvalid )
  {





    FT_UShort reserved;
    FT_UShort ligActionIndex;

    FT_UNUSED( state );
    FT_UNUSED( limit );
    reserved = (FT_UShort)( flags & 0x1FFF );
    ligActionIndex = glyphOffset_p->u;

    if ( reserved > 0 )
      GXV_TRACE(( "  reserved 14bit is non-zero\n" ));

    if ( 0 < ligActionIndex )
      gxv_morx_subtable_type2_ligActionIndex_validate(
        table, ligActionIndex, gxvalid );
  }
