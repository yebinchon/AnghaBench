
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int len; TYPE_2__* table; struct TYPE_6__* next; } ;
typedef TYPE_1__ pdf_xref_subsec ;
struct TYPE_7__ {int marked; scalar_t__ obj; } ;
typedef TYPE_2__ pdf_xref_entry ;
struct TYPE_8__ {TYPE_1__* subsec; } ;
typedef TYPE_3__ pdf_xref ;
struct TYPE_9__ {int num_xref_sections; TYPE_3__* xref_sections; } ;
typedef TYPE_4__ pdf_document ;
typedef int fz_context ;



void pdf_mark_xref(fz_context *ctx, pdf_document *doc)
{
 int x, e;

 for (x = 0; x < doc->num_xref_sections; x++)
 {
  pdf_xref *xref = &doc->xref_sections[x];
  pdf_xref_subsec *sub;

  for (sub = xref->subsec; sub != ((void*)0); sub = sub->next)
  {
   for (e = 0; e < sub->len; e++)
   {
    pdf_xref_entry *entry = &sub->table[e];
    if (entry->obj)
    {
     entry->marked = 1;
    }
   }
  }
 }
}
