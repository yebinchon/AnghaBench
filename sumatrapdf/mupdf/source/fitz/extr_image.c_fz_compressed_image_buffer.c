
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ get_pixmap; } ;
typedef TYPE_1__ fz_image ;
typedef int fz_context ;
struct TYPE_5__ {int * buffer; } ;
typedef TYPE_2__ fz_compressed_image ;
typedef int fz_compressed_buffer ;


 scalar_t__ compressed_image_get_pixmap ;

fz_compressed_buffer *fz_compressed_image_buffer(fz_context *ctx, fz_image *image)
{
 if (image == ((void*)0) || image->get_pixmap != compressed_image_get_pixmap)
  return ((void*)0);
 return ((fz_compressed_image *)image)->buffer;
}
