
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_pixmap ;
typedef int fz_image ;
typedef int fz_context ;
typedef int fz_color_params ;
typedef int fz_buffer ;


 int * fz_get_pixmap_from_image (int *,int *,int *,int *,int *,int *) ;
 int * png_from_pixmap (int *,int *,int ,int) ;

fz_buffer *
fz_new_buffer_from_image_as_png(fz_context *ctx, fz_image *image, fz_color_params color_params)
{
 fz_pixmap *pix = fz_get_pixmap_from_image(ctx, image, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
 return png_from_pixmap(ctx, pix, color_params, 1);
}
