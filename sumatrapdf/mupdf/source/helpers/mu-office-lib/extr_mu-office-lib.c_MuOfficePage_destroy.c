
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int ctx; TYPE_1__* pages; } ;
struct TYPE_6__ {int list; int page; struct TYPE_6__* next; TYPE_2__* doc; } ;
typedef TYPE_1__ MuOfficePage ;
typedef TYPE_2__ MuOfficeDoc ;


 int assert (TYPE_1__*) ;
 int fz_drop_display_list (int ,int ) ;
 int fz_drop_page (int ,int ) ;
 int fz_free (int ,TYPE_1__*) ;

void MuOfficePage_destroy(MuOfficePage *page)
{
 MuOfficeDoc *doc;
 MuOfficePage **ptr;

 if (!page)
  return;


 doc = page->doc;
 ptr = &doc->pages;
 while (*ptr && *ptr != page)
  ptr = &(*ptr)->next;
 assert(*ptr);
 *ptr = page->next;

 fz_drop_page(doc->ctx, page->page);
 fz_drop_display_list(doc->ctx, page->list);
 fz_free(doc->ctx, page);
}
