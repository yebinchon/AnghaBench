
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int vmtx_len; int vmtx_cap; TYPE_3__* vmtx; } ;
typedef TYPE_1__ pdf_font_desc ;
typedef int fz_context ;
struct TYPE_6__ {int lo; int hi; int x; int y; int w; } ;


 TYPE_3__* fz_realloc_array (int *,TYPE_3__*,int,int ) ;
 int pdf_vmtx ;

void
pdf_add_vmtx(fz_context *ctx, pdf_font_desc *font, int lo, int hi, int x, int y, int w)
{
 if (font->vmtx_len + 1 >= font->vmtx_cap)
 {
  int new_cap = font->vmtx_cap + 16;
  font->vmtx = fz_realloc_array(ctx, font->vmtx, new_cap, pdf_vmtx);
  font->vmtx_cap = new_cap;
 }

 font->vmtx[font->vmtx_len].lo = lo;
 font->vmtx[font->vmtx_len].hi = hi;
 font->vmtx[font->vmtx_len].x = x;
 font->vmtx[font->vmtx_len].y = y;
 font->vmtx[font->vmtx_len].w = w;
 font->vmtx_len++;
}
