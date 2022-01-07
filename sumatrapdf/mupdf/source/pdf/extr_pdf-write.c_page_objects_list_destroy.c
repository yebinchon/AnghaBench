
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; struct TYPE_4__** page; } ;
typedef TYPE_1__ page_objects_list ;
typedef int fz_context ;


 int fz_free (int *,TYPE_1__*) ;

__attribute__((used)) static void
page_objects_list_destroy(fz_context *ctx, page_objects_list *pol)
{
 int i;

 if (!pol)
  return;
 for (i = 0; i < pol->len; i++)
 {
  fz_free(ctx, pol->page[i]);
 }
 fz_free(ctx, pol);
}
