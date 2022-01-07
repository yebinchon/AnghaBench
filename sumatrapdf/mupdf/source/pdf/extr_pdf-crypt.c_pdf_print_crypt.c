
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int length; int method; } ;
struct TYPE_5__ {int length; int method; } ;
struct TYPE_7__ {int * u; int * o; int r; TYPE_2__ strf; TYPE_1__ stmf; int length; int v; } ;
typedef TYPE_3__ pdf_crypt ;
typedef int fz_output ;
typedef int fz_context ;


 int fz_write_printf (int *,int *,char*,...) ;

void
pdf_print_crypt(fz_context *ctx, fz_output *out, pdf_crypt *crypt)
{
 int i;

 fz_write_printf(ctx, out, "crypt {\n");

 fz_write_printf(ctx, out, "\tv=%d length=%d\n", crypt->v, crypt->length);
 fz_write_printf(ctx, out, "\tstmf method=%d length=%d\n", crypt->stmf.method, crypt->stmf.length);
 fz_write_printf(ctx, out, "\tstrf method=%d length=%d\n", crypt->strf.method, crypt->strf.length);
 fz_write_printf(ctx, out, "\tr=%d\n", crypt->r);

 fz_write_printf(ctx, out, "\to=<");
 for (i = 0; i < 32; i++)
  fz_write_printf(ctx, out, "%02X", crypt->o[i]);
 fz_write_printf(ctx, out, ">\n");

 fz_write_printf(ctx, out, "\tu=<");
 for (i = 0; i < 32; i++)
  fz_write_printf(ctx, out, "%02X", crypt->u[i]);
 fz_write_printf(ctx, out, ">\n");

 fz_write_printf(ctx, out, "}\n");
}
