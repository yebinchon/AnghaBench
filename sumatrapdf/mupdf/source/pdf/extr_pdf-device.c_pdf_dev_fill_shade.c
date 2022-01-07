
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_device ;
typedef int fz_shade ;
typedef int fz_matrix ;
typedef int fz_device ;
typedef int fz_context ;
typedef int fz_color_params ;


 int pdf_dev_end_text (int *,int *) ;

__attribute__((used)) static void
pdf_dev_fill_shade(fz_context *ctx, fz_device *dev, fz_shade *shade, fz_matrix ctm, float alpha, fz_color_params color_params)
{
 pdf_device *pdev = (pdf_device*)dev;


 pdf_dev_end_text(ctx, pdev);
}
