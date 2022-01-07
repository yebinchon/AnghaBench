
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* doc; } ;
typedef TYPE_1__ xps_page ;
struct TYPE_6__ {int * dev; int * cookie; } ;
typedef TYPE_2__ xps_document ;
typedef int fz_page ;
typedef int fz_matrix ;
typedef int fz_device ;
typedef int fz_cookie ;
typedef int fz_context ;


 int fz_pre_scale (int ,float,float) ;
 int xps_parse_fixed_page (int *,TYPE_2__*,int ,TYPE_1__*) ;

void
xps_run_page(fz_context *ctx, fz_page *page_, fz_device *dev, fz_matrix ctm, fz_cookie *cookie)
{
 xps_page *page = (xps_page*)page_;
 xps_document *doc = page->doc;
 fz_matrix page_ctm;

 page_ctm = fz_pre_scale(ctm, 72.0f / 96.0f, 72.0f / 96.0f);

 doc->cookie = cookie;
 doc->dev = dev;
 xps_parse_fixed_page(ctx, doc, page_ctm, page);
 doc->cookie = ((void*)0);
 doc->dev = ((void*)0);
}
