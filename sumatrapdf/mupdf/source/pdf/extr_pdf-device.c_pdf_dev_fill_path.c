
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pdf_device ;
struct TYPE_3__ {int buf; } ;
typedef TYPE_1__ gstate ;
typedef int fz_path ;
typedef int fz_matrix ;
typedef int fz_device ;
typedef int fz_context ;
typedef int fz_colorspace ;
typedef int fz_color_params ;


 TYPE_1__* CURRENT_GSTATE (int *) ;
 int fz_append_string (int *,int ,char*) ;
 int pdf_dev_alpha (int *,int *,float,int ) ;
 int pdf_dev_color (int *,int *,int *,float const*,int ,int ) ;
 int pdf_dev_ctm (int *,int *,int ) ;
 int pdf_dev_end_text (int *,int *) ;
 int pdf_dev_path (int *,int *,int const*) ;

__attribute__((used)) static void
pdf_dev_fill_path(fz_context *ctx, fz_device *dev, const fz_path *path, int even_odd, fz_matrix ctm,
 fz_colorspace *colorspace, const float *color, float alpha, fz_color_params color_params)
{
 pdf_device *pdev = (pdf_device*)dev;
 gstate *gs = CURRENT_GSTATE(pdev);

 pdf_dev_end_text(ctx, pdev);
 pdf_dev_alpha(ctx, pdev, alpha, 0);
 pdf_dev_color(ctx, pdev, colorspace, color, 0, color_params);
 pdf_dev_ctm(ctx, pdev, ctm);
 pdf_dev_path(ctx, pdev, path);
 fz_append_string(ctx, gs->buf, (even_odd ? "f*\n" : "f\n"));
}
