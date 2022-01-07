
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int obj; } ;
typedef TYPE_1__ pdf_page ;
typedef int pdf_obj ;
typedef int fz_context ;


 int Group ;
 int PDF_NAME (int ) ;
 int * pdf_dict_get (int *,int ,int ) ;

pdf_obj *
pdf_page_group(fz_context *ctx, pdf_page *page)
{
 return pdf_dict_get(ctx, page->obj, PDF_NAME(Group));
}
