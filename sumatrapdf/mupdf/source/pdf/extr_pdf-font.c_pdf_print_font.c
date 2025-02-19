
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int w; int y; } ;
struct TYPE_9__ {int w; } ;
struct TYPE_13__ {int hmtx_len; int vmtx_len; TYPE_5__* vmtx; TYPE_4__ dvmtx; scalar_t__ wmode; TYPE_3__* hmtx; TYPE_2__ dhmtx; TYPE_1__* font; } ;
typedef TYPE_6__ pdf_font_desc ;
typedef int fz_output ;
typedef int fz_context ;
struct TYPE_12__ {int w; int y; int x; int hi; int lo; } ;
struct TYPE_10__ {int w; int hi; int lo; } ;
struct TYPE_8__ {scalar_t__ t3procs; scalar_t__ ft_face; } ;


 int fz_write_printf (int *,int *,char*,...) ;

void
pdf_print_font(fz_context *ctx, fz_output *out, pdf_font_desc *fontdesc)
{
 int i;

 fz_write_printf(ctx, out, "fontdesc {\n");

 if (fontdesc->font->ft_face)
  fz_write_printf(ctx, out, "\tfreetype font\n");
 if (fontdesc->font->t3procs)
  fz_write_printf(ctx, out, "\ttype3 font\n");

 fz_write_printf(ctx, out, "\twmode %d\n", fontdesc->wmode);
 fz_write_printf(ctx, out, "\tDW %d\n", fontdesc->dhmtx.w);

 fz_write_printf(ctx, out, "\tW {\n");
 for (i = 0; i < fontdesc->hmtx_len; i++)
  fz_write_printf(ctx, out, "\t\t<%04x> <%04x> %d\n",
   fontdesc->hmtx[i].lo, fontdesc->hmtx[i].hi, fontdesc->hmtx[i].w);
 fz_write_printf(ctx, out, "\t}\n");

 if (fontdesc->wmode)
 {
  fz_write_printf(ctx, out, "\tDW2 [%d %d]\n", fontdesc->dvmtx.y, fontdesc->dvmtx.w);
  fz_write_printf(ctx, out, "\tW2 {\n");
  for (i = 0; i < fontdesc->vmtx_len; i++)
   fz_write_printf(ctx, out, "\t\t<%04x> <%04x> %d %d %d\n", fontdesc->vmtx[i].lo, fontdesc->vmtx[i].hi,
    fontdesc->vmtx[i].x, fontdesc->vmtx[i].y, fontdesc->vmtx[i].w);
  fz_write_printf(ctx, out, "\t}\n");
 }
}
