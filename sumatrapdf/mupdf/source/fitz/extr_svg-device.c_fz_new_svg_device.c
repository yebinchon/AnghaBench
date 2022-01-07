
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_output ;
typedef int fz_device ;
typedef int fz_context ;


 int * fz_new_svg_device_with_id (int *,int *,float,float,int,int,int *) ;

fz_device *fz_new_svg_device(fz_context *ctx, fz_output *out, float page_width, float page_height, int text_format, int reuse_images)
{
 return fz_new_svg_device_with_id(ctx, out, page_width, page_height, text_format, reuse_images, ((void*)0));
}
