
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_run_processor ;
typedef int pdf_processor ;
typedef int fz_image ;
typedef int fz_context ;


 int pdf_show_image (int *,int *,int *) ;

__attribute__((used)) static void pdf_run_Do_image(fz_context *ctx, pdf_processor *proc, const char *name, fz_image *image)
{
 pdf_run_processor *pr = (pdf_run_processor *)proc;
 pdf_show_image(ctx, pr, image);
}
