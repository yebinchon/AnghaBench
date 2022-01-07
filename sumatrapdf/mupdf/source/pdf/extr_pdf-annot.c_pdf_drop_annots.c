
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ pdf_annot ;
typedef int fz_context ;


 int pdf_drop_annot (int *,TYPE_1__*) ;

void
pdf_drop_annots(fz_context *ctx, pdf_annot *annot)
{
 while (annot)
 {
  pdf_annot *next = annot->next;
  pdf_drop_annot(ctx, annot);
  annot = next;
 }
}
