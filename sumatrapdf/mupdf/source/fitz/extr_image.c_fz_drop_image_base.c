
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mask; int colorspace; } ;
typedef TYPE_1__ fz_image ;
typedef int fz_context ;


 int fz_drop_colorspace (int *,int ) ;
 int fz_drop_image (int *,int ) ;
 int fz_free (int *,TYPE_1__*) ;

void
fz_drop_image_base(fz_context *ctx, fz_image *image)
{
 fz_drop_colorspace(ctx, image->colorspace);
 fz_drop_image(ctx, image->mask);
 fz_free(ctx, image);
}
