
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lo; int hi; } ;
typedef TYPE_1__ pdf_hmtx ;
struct TYPE_6__ {int hmtx_len; TYPE_1__ dhmtx; TYPE_1__* hmtx; } ;
typedef TYPE_2__ pdf_font_desc ;
typedef int fz_context ;



pdf_hmtx
pdf_lookup_hmtx(fz_context *ctx, pdf_font_desc *font, int cid)
{
 int l = 0;
 int r = font->hmtx_len - 1;
 int m;

 if (!font->hmtx)
  goto notfound;

 while (l <= r)
 {
  m = (l + r) >> 1;
  if (cid < font->hmtx[m].lo)
   r = m - 1;
  else if (cid > font->hmtx[m].hi)
   l = m + 1;
  else
   return font->hmtx[m];
 }

notfound:
 return font->dhmtx;
}
