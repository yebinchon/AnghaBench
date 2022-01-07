
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GXV_Validator ;
typedef int FT_UShort ;
typedef scalar_t__ FT_Short ;


 int GXV_EXIT ;
 int GXV_LCAR_DATA (int ) ;
 int GXV_NAME_ENTER (char*) ;
 int format ;
 int gxv_ctlPoint_validate (int ,int ,int ) ;

__attribute__((used)) static void
  gxv_lcar_partial_validate( FT_Short partial,
                             FT_UShort glyph,
                             GXV_Validator gxvalid )
  {
    GXV_NAME_ENTER( "partial" );

    if ( GXV_LCAR_DATA( format ) != 1 )
      goto Exit;

    gxv_ctlPoint_validate( glyph, (FT_UShort)partial, gxvalid );

  Exit:
    GXV_EXIT;
  }
