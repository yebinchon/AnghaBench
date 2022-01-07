
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pdf_processor ;
struct TYPE_2__ {int ahxencode; int * out; } ;
typedef TYPE_1__ pdf_output_processor ;
typedef int pdf_obj ;
typedef int fz_output ;
typedef int fz_context ;


 int fz_write_printf (int *,int *,char*,char const*) ;
 int fz_write_string (int *,int *,char*) ;
 int pdf_print_obj (int *,int *,int *,int,int) ;

__attribute__((used)) static void
pdf_out_BDC(fz_context *ctx, pdf_processor *proc, const char *tag, pdf_obj *raw, pdf_obj *cooked)
{
 fz_output *out = ((pdf_output_processor*)proc)->out;
 int ahx = ((pdf_output_processor*)proc)->ahxencode;
 fz_write_printf(ctx, out, "%n ", tag);
 pdf_print_obj(ctx, out, raw, 1, ahx);
 fz_write_string(ctx, out, " BDC\n");
}
