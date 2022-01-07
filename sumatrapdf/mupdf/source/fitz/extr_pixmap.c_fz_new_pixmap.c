
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_separations ;
typedef int fz_pixmap ;
typedef int fz_context ;
typedef int fz_colorspace ;


 int fz_colorspace_n (int *,int *) ;
 int fz_count_active_separations (int *,int *) ;
 int * fz_new_pixmap_with_data (int *,int *,int,int,int *,int,int,int *) ;

fz_pixmap *
fz_new_pixmap(fz_context *ctx, fz_colorspace *colorspace, int w, int h, fz_separations *seps, int alpha)
{
 int stride;
 int s = fz_count_active_separations(ctx, seps);
 if (!colorspace && s == 0) alpha = 1;
 stride = (fz_colorspace_n(ctx, colorspace) + s + alpha) * w;
 return fz_new_pixmap_with_data(ctx, colorspace, w, h, seps, alpha, stride, ((void*)0));
}
