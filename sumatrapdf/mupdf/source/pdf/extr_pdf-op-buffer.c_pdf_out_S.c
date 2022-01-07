
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pdf_processor ;
struct TYPE_2__ {int * out; } ;
typedef TYPE_1__ pdf_output_processor ;
typedef int fz_output ;
typedef int fz_context ;


 int fz_write_string (int *,int *,char*) ;

__attribute__((used)) static void
pdf_out_S(fz_context *ctx, pdf_processor *proc)
{
 fz_output *out = ((pdf_output_processor*)proc)->out;
 fz_write_string(ctx, out, "S\n");
}
