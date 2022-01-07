
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_device ;
typedef int fz_device ;
typedef int fz_context ;


 int pdf_dev_end_text (int *,int *) ;
 int pdf_dev_pop (int *,int *) ;

__attribute__((used)) static void
pdf_dev_pop_clip(fz_context *ctx, fz_device *dev)
{
 pdf_device *pdev = (pdf_device*)dev;


 pdf_dev_end_text(ctx, pdev);
 pdf_dev_pop(ctx, pdev);
}
