
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;


 int ctx ;
 int doc ;
 int fz_write_printf (int ,int ,char*,int,int ) ;
 int out ;
 int pdf_count_pages (int ,int ) ;
 int * pdf_lookup_page_obj (int ,int ,int) ;
 int pdf_to_num (int ,int *) ;

__attribute__((used)) static void showpages(void)
{
 pdf_obj *ref;
 int i, n = pdf_count_pages(ctx, doc);
 for (i = 0; i < n; ++i)
 {
  ref = pdf_lookup_page_obj(ctx, doc, i);
  fz_write_printf(ctx, out, "page %d = %d 0 R\n", i + 1, pdf_to_num(ctx, ref));
 }
}
