
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_pixmap ;
typedef int fz_context ;
struct TYPE_4__ {scalar_t__ get_pixmap; } ;
struct TYPE_5__ {int tile; TYPE_1__ super; } ;
typedef TYPE_2__ fz_compressed_image ;


 int assert (int) ;
 scalar_t__ compressed_image_get_pixmap ;
 int fz_drop_pixmap (int *,int ) ;
 int fz_keep_pixmap (int *,int *) ;

void fz_set_compressed_image_tile(fz_context *ctx, fz_compressed_image *image, fz_pixmap *pix)
{
 assert(image != ((void*)0) && image->super.get_pixmap == compressed_image_get_pixmap);
 fz_drop_pixmap(ctx, ((fz_compressed_image *)image)->tile);
 ((fz_compressed_image *)image)->tile = fz_keep_pixmap(ctx, pix);
}
