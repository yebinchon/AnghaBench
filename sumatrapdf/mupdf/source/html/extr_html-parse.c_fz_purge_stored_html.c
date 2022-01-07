
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 int fz_filter_store (int *,int ,void*,int *) ;
 int fz_html_store_type ;
 int html_filter_store ;

void fz_purge_stored_html(fz_context *ctx, void *doc)
{
 fz_filter_store(ctx, html_filter_store, doc, &fz_html_store_type);
}
