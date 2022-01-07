
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * (* load_links ) (int *,TYPE_1__*) ;} ;
typedef TYPE_1__ fz_page ;
typedef int fz_link ;
typedef int fz_context ;


 int * stub1 (int *,TYPE_1__*) ;

fz_link *
fz_load_links(fz_context *ctx, fz_page *page)
{
 if (page && page->load_links)
  return page->load_links(ctx, page);
 return ((void*)0);
}
