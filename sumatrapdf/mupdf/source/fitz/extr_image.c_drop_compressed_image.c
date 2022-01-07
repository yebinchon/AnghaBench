
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int fz_image ;
typedef int fz_context ;
struct TYPE_2__ {int buffer; int tile; } ;
typedef TYPE_1__ fz_compressed_image ;


 int fz_drop_compressed_buffer (int *,int ) ;
 int fz_drop_pixmap (int *,int ) ;

__attribute__((used)) static void
drop_compressed_image(fz_context *ctx, fz_image *image_)
{
 fz_compressed_image *image = (fz_compressed_image *)image_;

 fz_drop_pixmap(ctx, image->tile);
 fz_drop_compressed_buffer(ctx, image->buffer);
}
