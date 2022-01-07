
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_pixmap ;
typedef int fz_halftone ;
typedef int fz_context ;
typedef int fz_bitmap ;


 int * fz_new_bitmap_from_pixmap_band (int *,int *,int *,int ) ;

fz_bitmap *fz_new_bitmap_from_pixmap(fz_context *ctx, fz_pixmap *pix, fz_halftone *ht)
{
 return fz_new_bitmap_from_pixmap_band(ctx, pix, ht, 0);
}
