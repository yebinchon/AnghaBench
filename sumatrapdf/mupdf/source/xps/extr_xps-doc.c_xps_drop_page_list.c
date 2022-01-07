
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xps_document ;
typedef int fz_context ;


 int xps_drop_fixed_documents (int *,int *) ;
 int xps_drop_fixed_pages (int *,int *) ;
 int xps_drop_link_targets (int *,int *) ;

void
xps_drop_page_list(fz_context *ctx, xps_document *doc)
{
 xps_drop_fixed_documents(ctx, doc);
 xps_drop_fixed_pages(ctx, doc);
 xps_drop_link_targets(ctx, doc);
}
