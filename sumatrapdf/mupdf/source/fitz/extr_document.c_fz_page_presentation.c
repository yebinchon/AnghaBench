
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_transition ;
struct TYPE_4__ {int * (* page_presentation ) (int *,TYPE_1__*,int *,float*) ;} ;
typedef TYPE_1__ fz_page ;
typedef int fz_context ;


 int * stub1 (int *,TYPE_1__*,int *,float*) ;

fz_transition *
fz_page_presentation(fz_context *ctx, fz_page *page, fz_transition *transition, float *duration)
{
 float dummy;
 if (duration)
  *duration = 0;
 else
  duration = &dummy;
 if (page && page->page_presentation && page)
  return page->page_presentation(ctx, page, transition, duration);
 return ((void*)0);
}
