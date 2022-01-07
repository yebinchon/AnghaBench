
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FT_UInt ;
typedef int FT_Error ;
typedef int CID_Face ;


 int FT_Err_Ok ;
 int FT_UNUSED (int ) ;

__attribute__((used)) static FT_Error
  cid_get_cid_from_glyph_index( CID_Face face,
                                FT_UInt glyph_index,
                                FT_UInt *cid )
  {
    FT_Error error = FT_Err_Ok;
    FT_UNUSED( face );


    if ( cid )
      *cid = glyph_index;

    return error;
  }
