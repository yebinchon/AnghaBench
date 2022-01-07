
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cap; int * page; } ;
typedef TYPE_1__ page_objects_list ;
typedef int page_objects ;
typedef int fz_context ;


 TYPE_1__* fz_realloc (int *,TYPE_1__*,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void
page_objects_list_ensure(fz_context *ctx, page_objects_list **pol, int newcap)
{
 int oldcap = (*pol)->cap;
 if (newcap <= oldcap)
  return;
 *pol = fz_realloc(ctx, *pol, sizeof(page_objects_list) + (newcap-1)*sizeof(page_objects *));
 memset(&(*pol)->page[oldcap], 0, (newcap-oldcap)*sizeof(page_objects *));
 (*pol)->cap = newcap;
}
