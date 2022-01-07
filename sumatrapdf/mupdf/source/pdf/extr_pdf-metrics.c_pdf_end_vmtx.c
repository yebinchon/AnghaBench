
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pdf_vmtx ;
struct TYPE_3__ {int size; int vmtx_cap; int vmtx_len; int vmtx; } ;
typedef TYPE_1__ pdf_font_desc ;
typedef int fz_context ;


 int cmpv ;
 int qsort (int ,int ,int,int ) ;

void
pdf_end_vmtx(fz_context *ctx, pdf_font_desc *font)
{
 if (!font->vmtx)
  return;
 qsort(font->vmtx, font->vmtx_len, sizeof(pdf_vmtx), cmpv);
 font->size += font->vmtx_cap * sizeof(pdf_vmtx);
}
