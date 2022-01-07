
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tile; } ;
typedef TYPE_1__ fz_pixmap_image ;
typedef int fz_image ;
typedef int fz_context ;


 size_t fz_pixmap_size (int *,int ) ;

__attribute__((used)) static size_t
pixmap_image_get_size(fz_context *ctx, fz_image *image)
{
 fz_pixmap_image *im = (fz_pixmap_image *)image;

 if (image == ((void*)0))
  return 0;

 return sizeof(fz_pixmap_image) + fz_pixmap_size(ctx, im->tile);
}
