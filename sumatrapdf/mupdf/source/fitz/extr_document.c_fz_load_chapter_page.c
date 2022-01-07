
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int chapter; int number; struct TYPE_10__** prev; struct TYPE_10__* next; int incomplete; } ;
typedef TYPE_1__ fz_page ;
struct TYPE_11__ {TYPE_1__* open; TYPE_1__* (* load_page ) (int *,TYPE_2__*,int,int) ;} ;
typedef TYPE_2__ fz_document ;
typedef int fz_context ;


 int fz_ensure_layout (int *,TYPE_2__*) ;
 TYPE_1__* fz_keep_page (int *,TYPE_1__*) ;
 TYPE_1__* stub1 (int *,TYPE_2__*,int,int) ;

fz_page *
fz_load_chapter_page(fz_context *ctx, fz_document *doc, int chapter, int number)
{
 fz_page *page;

 fz_ensure_layout(ctx, doc);

 if (doc)
  for (page = doc->open; page; page = page->next)
   if (page->chapter == chapter && page->number == number)
    return fz_keep_page(ctx, page);

 if (doc && doc->load_page)
 {
  page = doc->load_page(ctx, doc, chapter, number);
  page->chapter = chapter;
  page->number = number;


  if (!page->incomplete)
  {
   if ((page->next = doc->open) != ((void*)0))
    doc->open->prev = &page->next;
   doc->open = page;
   page->prev = &doc->open;
  }
  return page;
 }

 return ((void*)0);
}
