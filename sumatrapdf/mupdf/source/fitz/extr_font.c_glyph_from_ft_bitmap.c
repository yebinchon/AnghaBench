
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_glyph ;
typedef int fz_context ;
struct TYPE_3__ {scalar_t__ pixel_mode; int rows; int pitch; scalar_t__ buffer; int width; } ;
typedef TYPE_1__ FT_Bitmap ;


 scalar_t__ FT_PIXEL_MODE_MONO ;
 int Memento_label (scalar_t__,char*) ;
 int * fz_new_glyph_from_1bpp_data (int *,int,int,int ,int,scalar_t__,int) ;
 int * fz_new_glyph_from_8bpp_data (int *,int,int,int ,int,scalar_t__,int) ;

__attribute__((used)) static fz_glyph *
glyph_from_ft_bitmap(fz_context *ctx, int left, int top, FT_Bitmap *bitmap)
{
 (void)Memento_label(bitmap->buffer, "ft_bitmap");
 if (bitmap->pixel_mode == FT_PIXEL_MODE_MONO)
  return fz_new_glyph_from_1bpp_data(ctx, left, top - bitmap->rows, bitmap->width, bitmap->rows, bitmap->buffer + (bitmap->rows-1)*bitmap->pitch, -bitmap->pitch);
 else
  return fz_new_glyph_from_8bpp_data(ctx, left, top - bitmap->rows, bitmap->width, bitmap->rows, bitmap->buffer + (bitmap->rows-1)*bitmap->pitch, -bitmap->pitch);
}
