
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int refs; } ;
typedef TYPE_1__ fz_page ;
typedef int fz_context ;


 TYPE_1__* Memento_label (int ,char*) ;
 int fz_calloc (int *,int,int) ;

fz_page *
fz_new_page_of_size(fz_context *ctx, int size)
{
 fz_page *page = Memento_label(fz_calloc(ctx, 1, size), "fz_page");
 page->refs = 1;
 return page;
}
