
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int id; } ;
typedef TYPE_1__ svg_device ;
typedef int fz_rect ;
typedef int fz_output ;
struct TYPE_16__ {float a; float d; int member_0; } ;
typedef TYPE_2__ fz_matrix ;
struct TYPE_17__ {float w; float h; } ;
typedef TYPE_3__ fz_image ;
typedef int fz_device ;
typedef int fz_context ;


 int * end_def (int *,TYPE_1__*) ;
 TYPE_2__ fz_concat (TYPE_2__,TYPE_2__) ;
 int fz_default_color_params ;
 int fz_write_printf (int *,int *,char*,...) ;
 int * start_def (int *,TYPE_1__*) ;
 int svg_dev_ctm (int *,TYPE_1__*,TYPE_2__) ;
 int svg_send_image (int *,TYPE_1__*,TYPE_3__*,int ) ;

__attribute__((used)) static void
svg_dev_clip_image_mask(fz_context *ctx, fz_device *dev, fz_image *image, fz_matrix ctm, fz_rect scissor)
{
 svg_device *sdev = (svg_device*)dev;
 fz_output *out;
 fz_matrix local_ctm = ctm;
 fz_matrix scale = { 0 };
 int mask = sdev->id++;

 scale.a = 1.0f / image->w;
 scale.d = 1.0f / image->h;

 local_ctm = fz_concat(scale, ctm);
 out = start_def(ctx, sdev);
 fz_write_printf(ctx, out, "<mask id=\"ma%d\">\n<g", mask);
 svg_dev_ctm(ctx, sdev, local_ctm);
 fz_write_printf(ctx, out, ">\n");
 svg_send_image(ctx, sdev, image, fz_default_color_params );
 fz_write_printf(ctx, out, "</g>\n</mask>\n");
 out = end_def(ctx, sdev);
 fz_write_printf(ctx, out, "<g mask=\"url(#ma%d)\">\n", mask);
}
