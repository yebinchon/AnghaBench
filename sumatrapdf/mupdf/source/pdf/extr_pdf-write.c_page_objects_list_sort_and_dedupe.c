
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int * page; } ;
typedef TYPE_1__ page_objects_list ;
typedef int fz_context ;


 int page_objects_dedupe (int *,int ) ;
 int page_objects_sort (int *,int ) ;

__attribute__((used)) static void
page_objects_list_sort_and_dedupe(fz_context *ctx, page_objects_list *pol)
{
 int i;
 int n = pol->len;

 for (i = 0; i < n; i++)
 {
  page_objects_sort(ctx, pol->page[i]);
  page_objects_dedupe(ctx, pol->page[i]);
 }
}
