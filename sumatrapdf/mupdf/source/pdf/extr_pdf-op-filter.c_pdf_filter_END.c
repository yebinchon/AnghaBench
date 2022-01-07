
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_processor ;
typedef int pdf_filter_processor ;
typedef int fz_context ;


 int filter_pop (int *,int *) ;

__attribute__((used)) static void
pdf_filter_END(fz_context *ctx, pdf_processor *proc)
{
 pdf_filter_processor *p = (pdf_filter_processor*)proc;
 while (!filter_pop(ctx, p))
 {

 }
}
