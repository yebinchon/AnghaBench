
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int list_len; TYPE_4__* page_object_lists; } ;
typedef TYPE_2__ pdf_write_state ;
typedef int fz_context ;
struct TYPE_8__ {TYPE_1__** page; } ;
struct TYPE_6__ {int page_object_number; } ;


 int expand_lists (int *,TYPE_2__*,int) ;
 int page_objects_list_ensure (int *,TYPE_4__**,int) ;

__attribute__((used)) static void
page_objects_list_set_page_object(fz_context *ctx, pdf_write_state *opts, int page, int object)
{
 page_objects_list_ensure(ctx, &opts->page_object_lists, page+1);
 if (object >= opts->list_len)
  expand_lists(ctx, opts, object);
 opts->page_object_lists->page[page]->page_object_number = object;
}
