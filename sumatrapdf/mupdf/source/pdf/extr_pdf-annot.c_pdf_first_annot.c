
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * annots; } ;
typedef TYPE_1__ pdf_page ;
typedef int pdf_annot ;
typedef int fz_context ;



pdf_annot *
pdf_first_annot(fz_context *ctx, pdf_page *page)
{
 return page->annots;
}
