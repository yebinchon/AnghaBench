
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int doc; } ;
typedef TYPE_1__ xps_page ;
typedef int fz_page ;
typedef int fz_matrix ;
typedef int fz_link ;
typedef int fz_context ;


 int fz_scale (float,float) ;
 int xps_load_links_in_fixed_page (int *,int ,int ,TYPE_1__*,int **) ;

fz_link *
xps_load_links(fz_context *ctx, fz_page *page_)
{
 xps_page *page = (xps_page*)page_;
 fz_matrix ctm;
 fz_link *link = ((void*)0);
 ctm = fz_scale(72.0f / 96.0f, 72.0f / 96.0f);
 xps_load_links_in_fixed_page(ctx, page->doc, ctm, page, &link);
 return link;
}
