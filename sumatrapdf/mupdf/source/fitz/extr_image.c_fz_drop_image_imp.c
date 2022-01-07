
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_storable ;
struct TYPE_4__ {int (* drop_image ) (int *,TYPE_1__*) ;} ;
typedef TYPE_1__ fz_image ;
typedef int fz_context ;


 int fz_drop_image_base (int *,TYPE_1__*) ;
 int stub1 (int *,TYPE_1__*) ;

void
fz_drop_image_imp(fz_context *ctx, fz_storable *image_)
{
 fz_image *image = (fz_image *)image_;

 image->drop_image(ctx, image);
 fz_drop_image_base(ctx, image);
}
