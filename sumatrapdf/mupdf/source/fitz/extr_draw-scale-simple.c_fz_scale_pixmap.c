
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_pixmap ;
typedef int fz_irect ;
typedef int fz_context ;


 int * fz_scale_pixmap_cached (int *,int *,float,float,float,float,int const*,int *,int *) ;

fz_pixmap *
fz_scale_pixmap(fz_context *ctx, fz_pixmap *src, float x, float y, float w, float h, const fz_irect *clip)
{
 return fz_scale_pixmap_cached(ctx, src, x, y, w, h, clip, ((void*)0), ((void*)0));
}
