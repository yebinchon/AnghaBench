
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* FT_Face ;


 int FT_UNUSED (void*) ;

void
  af_shaper_buf_destroy( FT_Face face,
                         void* buf )
  {
    FT_UNUSED( face );
    FT_UNUSED( buf );
  }
