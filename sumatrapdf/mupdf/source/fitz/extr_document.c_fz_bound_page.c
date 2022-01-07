
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_rect ;
struct TYPE_4__ {int (* bound_page ) (int *,TYPE_1__*) ;} ;
typedef TYPE_1__ fz_page ;
typedef int fz_context ;


 int fz_empty_rect ;
 int stub1 (int *,TYPE_1__*) ;

fz_rect
fz_bound_page(fz_context *ctx, fz_page *page)
{
 if (page && page->bound_page)
  return page->bound_page(ctx, page);
 return fz_empty_rect;
}
