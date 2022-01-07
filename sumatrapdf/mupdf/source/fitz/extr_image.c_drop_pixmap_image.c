
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tile; } ;
typedef TYPE_1__ fz_pixmap_image ;
typedef int fz_image ;
typedef int fz_context ;


 int fz_drop_pixmap (int *,int ) ;

__attribute__((used)) static void
drop_pixmap_image(fz_context *ctx, fz_image *image_)
{
 fz_pixmap_image *image = (fz_pixmap_image *)image_;

 fz_drop_pixmap(ctx, image->tile);
}
