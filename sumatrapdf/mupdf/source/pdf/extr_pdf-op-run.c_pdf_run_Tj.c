
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_run_processor ;
typedef int pdf_processor ;
typedef int fz_context ;


 int pdf_show_string (int *,int *,unsigned char*,int) ;

__attribute__((used)) static void pdf_run_Tj(fz_context *ctx, pdf_processor *proc, char *string, int string_len)
{
 pdf_run_processor *pr = (pdf_run_processor *)proc;
 pdf_show_string(ctx, pr, (unsigned char *)string, string_len);
}
