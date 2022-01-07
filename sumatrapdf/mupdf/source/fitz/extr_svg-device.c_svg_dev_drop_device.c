
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_fonts; int num_images; TYPE_2__* images; TYPE_2__* fonts; int defs; int defs_buffer; TYPE_2__* tiles; } ;
typedef TYPE_1__ svg_device ;
typedef int fz_device ;
typedef int fz_context ;
struct TYPE_4__ {int image; struct TYPE_4__* sentlist; int font; } ;


 int fz_drop_buffer (int *,int ) ;
 int fz_drop_font (int *,int ) ;
 int fz_drop_image (int *,int ) ;
 int fz_drop_output (int *,int ) ;
 int fz_free (int *,TYPE_2__*) ;

__attribute__((used)) static void
svg_dev_drop_device(fz_context *ctx, fz_device *dev)
{
 svg_device *sdev = (svg_device*)dev;
 int i;

 fz_free(ctx, sdev->tiles);
 fz_drop_buffer(ctx, sdev->defs_buffer);
 fz_drop_output(ctx, sdev->defs);
 for (i = 0; i < sdev->num_fonts; i++)
 {
  fz_drop_font(ctx, sdev->fonts[i].font);
  fz_free(ctx, sdev->fonts[i].sentlist);
 }
 fz_free(ctx, sdev->fonts);
 for (i = 0; i < sdev->num_images; i++)
 {
  fz_drop_image(ctx, sdev->images[i].image);
 }
 fz_free(ctx, sdev->images);
}
