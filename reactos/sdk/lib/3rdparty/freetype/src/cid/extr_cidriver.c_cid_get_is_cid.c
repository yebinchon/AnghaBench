
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FT_Error ;
typedef int FT_Bool ;
typedef int CID_Face ;


 int FT_Err_Ok ;
 int FT_UNUSED (int ) ;

__attribute__((used)) static FT_Error
  cid_get_is_cid( CID_Face face,
                  FT_Bool *is_cid )
  {
    FT_Error error = FT_Err_Ok;
    FT_UNUSED( face );


    if ( is_cid )
      *is_cid = 1;

    return error;
  }
