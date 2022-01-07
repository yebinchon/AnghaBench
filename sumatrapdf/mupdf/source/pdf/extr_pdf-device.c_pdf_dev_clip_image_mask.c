
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_device ;
typedef int fz_rect ;
typedef int fz_matrix ;
typedef int fz_image ;
typedef int fz_device ;
typedef int fz_context ;


 int pdf_dev_end_text (int *,int *) ;
 int pdf_dev_push (int *,int *) ;

__attribute__((used)) static void
pdf_dev_clip_image_mask(fz_context *ctx, fz_device *dev, fz_image *image, fz_matrix ctm, fz_rect scissor)
{
 pdf_device *pdev = (pdf_device*)dev;


 pdf_dev_end_text(ctx, pdev);
 pdf_dev_push(ctx, pdev);
}
