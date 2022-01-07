
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ linear_page_count; } ;
typedef TYPE_1__ pdf_document ;
typedef int fz_context ;


 int pdf_dict_getp (int *,int ,char*) ;
 int pdf_to_int (int *,int ) ;
 int pdf_trailer (int *,TYPE_1__*) ;

int
pdf_count_pages(fz_context *ctx, pdf_document *doc)
{


 if (doc->linear_page_count != 0)
  return doc->linear_page_count;
 return pdf_to_int(ctx, pdf_dict_getp(ctx, pdf_trailer(ctx, doc), "Root/Pages/Count"));
}
