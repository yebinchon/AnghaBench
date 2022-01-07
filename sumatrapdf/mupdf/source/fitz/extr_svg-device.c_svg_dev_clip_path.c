
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int id; } ;
typedef TYPE_1__ svg_device ;
typedef int fz_rect ;
typedef int fz_path ;
typedef int fz_output ;
typedef int fz_matrix ;
typedef int fz_device ;
typedef int fz_context ;


 int * end_def (int *,TYPE_1__*) ;
 int fz_write_printf (int *,int *,char*,...) ;
 int * start_def (int *,TYPE_1__*) ;
 int svg_dev_ctm (int *,TYPE_1__*,int ) ;
 int svg_dev_path (int *,TYPE_1__*,int const*) ;

__attribute__((used)) static void
svg_dev_clip_path(fz_context *ctx, fz_device *dev, const fz_path *path, int even_odd, fz_matrix ctm, fz_rect scissor)
{
 svg_device *sdev = (svg_device*)dev;
 fz_output *out;

 int num = sdev->id++;

 out = start_def(ctx, sdev);
 fz_write_printf(ctx, out, "<clipPath id=\"cp%d\">\n", num);
 fz_write_printf(ctx, out, "<path");
 svg_dev_ctm(ctx, sdev, ctm);
 svg_dev_path(ctx, sdev, path);
 if (even_odd)
  fz_write_printf(ctx, out, " fill-rule=\"evenodd\"");
 fz_write_printf(ctx, out, "/>\n</clipPath>\n");
 out = end_def(ctx, sdev);
 fz_write_printf(ctx, out, "<g clip-path=\"url(#cp%d)\">\n", num);
}
