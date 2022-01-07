
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* overprint ) (int *,TYPE_1__*) ;} ;
typedef TYPE_1__ fz_page ;
typedef int fz_context ;


 int stub1 (int *,TYPE_1__*) ;

int fz_page_uses_overprint(fz_context *ctx, fz_page *page)
{
 if (page && page->overprint)
  return page->overprint(ctx, page);
 return 0;
}
