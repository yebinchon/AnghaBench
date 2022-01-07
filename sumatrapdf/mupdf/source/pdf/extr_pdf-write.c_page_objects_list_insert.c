
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int list_len; TYPE_3__* page_object_lists; } ;
typedef TYPE_1__ pdf_write_state ;
typedef int fz_context ;
struct TYPE_6__ {int len; int * page; } ;


 int expand_lists (int *,TYPE_1__*,int) ;
 int page_objects_insert (int *,int *,int) ;
 int page_objects_list_ensure (int *,TYPE_3__**,int) ;

__attribute__((used)) static void
page_objects_list_insert(fz_context *ctx, pdf_write_state *opts, int page, int object)
{
 page_objects_list_ensure(ctx, &opts->page_object_lists, page+1);
 if (object >= opts->list_len)
  expand_lists(ctx, opts, object);
 if (opts->page_object_lists->len < page+1)
  opts->page_object_lists->len = page+1;
 page_objects_insert(ctx, &opts->page_object_lists->page[page], object);
}
