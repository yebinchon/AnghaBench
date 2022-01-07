
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int (* drop_page ) (int *,TYPE_2__*) ;TYPE_1__* next; TYPE_1__** prev; int refs; } ;
typedef TYPE_2__ fz_page ;
typedef int fz_context ;
struct TYPE_7__ {struct TYPE_7__** prev; } ;


 scalar_t__ fz_drop_imp (int *,TYPE_2__*,int *) ;
 int fz_free (int *,TYPE_2__*) ;
 int stub1 (int *,TYPE_2__*) ;

void
fz_drop_page(fz_context *ctx, fz_page *page)
{
 if (fz_drop_imp(ctx, page, &page->refs))
 {

  if (page->next != ((void*)0))
   page->next->prev = page->prev;
  if (page->prev != ((void*)0))
   *page->prev = page->next;

  if (page->drop_page)
   page->drop_page(ctx, page);

  fz_free(ctx, page);
 }
}
