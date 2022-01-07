
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_separations ;
struct TYPE_4__ {int * (* separations ) (int *,TYPE_1__*) ;} ;
typedef TYPE_1__ fz_page ;
typedef int fz_context ;


 int * stub1 (int *,TYPE_1__*) ;

fz_separations *
fz_page_separations(fz_context *ctx, fz_page *page)
{
 if (page && page->separations)
  return page->separations(ctx, page);
 return ((void*)0);
}
