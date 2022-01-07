
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_pixmap ;
typedef int fz_matrix ;
typedef int fz_device ;
typedef int fz_context ;
typedef int fz_colorspace ;


 int * new_draw_device (int *,int ,int *,int *,int *,int *) ;

fz_device *
fz_new_draw_device_with_proof(fz_context *ctx, fz_matrix transform, fz_pixmap *dest, fz_colorspace *cs)
{
 return new_draw_device(ctx, transform, dest, ((void*)0), ((void*)0), cs);
}
