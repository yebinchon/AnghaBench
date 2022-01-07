
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pdf_processor ;
struct TYPE_2__ {int extgstate; int * out; } ;
typedef TYPE_1__ pdf_output_processor ;
typedef int fz_output ;
typedef int fz_context ;


 int fz_write_printf (int *,int *,char*,float) ;

__attribute__((used)) static void
pdf_out_M(fz_context *ctx, pdf_processor *proc, float a)
{
 fz_output *out = ((pdf_output_processor*)proc)->out;
 if (!((pdf_output_processor*)proc)->extgstate)
  fz_write_printf(ctx, out, "%g M\n", a);
}
