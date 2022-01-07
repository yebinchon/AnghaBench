
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int links; } ;
typedef TYPE_1__ pdf_page ;
typedef int fz_link ;
typedef int fz_context ;


 int * fz_keep_link (int *,int ) ;

fz_link *
pdf_load_links(fz_context *ctx, pdf_page *page)
{
 return fz_keep_link(ctx, page->links);
}
