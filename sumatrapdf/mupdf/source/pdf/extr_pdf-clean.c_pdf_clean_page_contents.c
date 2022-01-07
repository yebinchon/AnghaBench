
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_page_contents_process_fn ;
typedef int pdf_page ;
typedef int pdf_document ;
typedef int fz_cookie ;
typedef int fz_context ;


 int pdf_filter_page_contents (int *,int *,int *,int *,int *,int *,int *,void*,int,int) ;

void pdf_clean_page_contents(fz_context *ctx, pdf_document *doc, pdf_page *page, fz_cookie *cookie, pdf_page_contents_process_fn *proc_fn, void *arg, int sanitize, int ascii)
{
 pdf_filter_page_contents(ctx, doc, page, cookie, proc_fn, ((void*)0), ((void*)0), arg, sanitize, ascii);
}
