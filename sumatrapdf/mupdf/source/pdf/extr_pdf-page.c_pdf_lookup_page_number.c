
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_5__ {scalar_t__ rev_page_map; } ;
typedef TYPE_1__ pdf_document ;
typedef int fz_context ;


 int pdf_lookup_page_number_fast (int *,TYPE_1__*,int ) ;
 int pdf_lookup_page_number_slow (int *,TYPE_1__*,int *) ;
 int pdf_to_num (int *,int *) ;

int
pdf_lookup_page_number(fz_context *ctx, pdf_document *doc, pdf_obj *page)
{
 if (doc->rev_page_map)
  return pdf_lookup_page_number_fast(ctx, doc, pdf_to_num(ctx, page));
 else
  return pdf_lookup_page_number_slow(ctx, doc, page);
}
