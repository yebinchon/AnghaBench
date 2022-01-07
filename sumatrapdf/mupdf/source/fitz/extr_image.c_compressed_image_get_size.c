
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_pixmap_image ;
typedef int fz_image ;
typedef int fz_context ;
struct TYPE_6__ {TYPE_2__* buffer; int tile; } ;
typedef TYPE_3__ fz_compressed_image ;
struct TYPE_5__ {TYPE_1__* buffer; } ;
struct TYPE_4__ {int cap; } ;


 size_t fz_pixmap_size (int *,int ) ;

__attribute__((used)) static size_t
compressed_image_get_size(fz_context *ctx, fz_image *image)
{
 fz_compressed_image *im = (fz_compressed_image *)image;

 if (image == ((void*)0))
  return 0;

 return sizeof(fz_pixmap_image) + fz_pixmap_size(ctx, im->tile) + (im->buffer && im->buffer->buffer ? im->buffer->buffer->cap : 0);
}
