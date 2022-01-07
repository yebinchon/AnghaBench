
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pdf_hmtx ;
struct TYPE_3__ {int size; int hmtx_cap; int hmtx_len; int hmtx; } ;
typedef TYPE_1__ pdf_font_desc ;
typedef int fz_context ;


 int cmph ;
 int qsort (int ,int ,int,int ) ;

void
pdf_end_hmtx(fz_context *ctx, pdf_font_desc *font)
{
 if (!font->hmtx)
  return;
 qsort(font->hmtx, font->hmtx_len, sizeof(pdf_hmtx), cmph);
 font->size += font->hmtx_cap * sizeof(pdf_hmtx);
}
