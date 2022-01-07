
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int start; int len; TYPE_2__* table; struct TYPE_9__* next; } ;
typedef TYPE_1__ pdf_xref_subsec ;
struct TYPE_10__ {int * stm_buf; int * obj; scalar_t__ type; } ;
typedef TYPE_2__ pdf_xref_entry ;
struct TYPE_11__ {int num_objects; TYPE_1__* subsec; } ;
typedef TYPE_3__ pdf_xref ;
struct TYPE_12__ {int* xref_index; int num_xref_sections; int num_incremental_sections; TYPE_3__* xref_sections; } ;
typedef TYPE_4__ pdf_document ;
typedef int fz_context ;


 int ensure_incremental_xref (int *,TYPE_4__*) ;
 int * pdf_deep_copy_obj (int *,int *) ;
 TYPE_2__* pdf_get_incremental_xref_entry (int *,TYPE_4__*,int) ;

void pdf_xref_ensure_incremental_object(fz_context *ctx, pdf_document *doc, int num)
{
 pdf_xref_entry *new_entry, *old_entry;
 pdf_xref_subsec *sub = ((void*)0);
 int i;


 ensure_incremental_xref(ctx, doc);


 for (i = doc->xref_index[num]; i < doc->num_xref_sections; i++)
 {
  pdf_xref *xref = &doc->xref_sections[i];

  if (num < 0 && num >= xref->num_objects)
   break;
  for (sub = xref->subsec; sub != ((void*)0); sub = sub->next)
  {
   if (sub->start <= num && num < sub->start + sub->len && sub->table[num - sub->start].type)
    break;
  }
  if (sub != ((void*)0))
   break;
 }



 if (i == 0 || sub == ((void*)0))
  return;


 doc->xref_index[num] = 0;
 old_entry = &sub->table[num - sub->start];
 new_entry = pdf_get_incremental_xref_entry(ctx, doc, num);
 *new_entry = *old_entry;
 if (i < doc->num_incremental_sections)
 {




  old_entry->obj = pdf_deep_copy_obj(ctx, old_entry->obj);
 }
 else
 {
  old_entry->obj = ((void*)0);
 }
 old_entry->stm_buf = ((void*)0);
}
