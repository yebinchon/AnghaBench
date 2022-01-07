
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int start; int len; int * table; int * next; } ;
typedef TYPE_1__ pdf_xref_subsec ;
typedef int pdf_xref_entry ;
struct TYPE_8__ {int num_objects; TYPE_1__* subsec; } ;
typedef TYPE_2__ pdf_xref ;
struct TYPE_9__ {size_t xref_base; scalar_t__* xref_index; TYPE_2__* xref_sections; } ;
typedef TYPE_3__ pdf_document ;
typedef int fz_context ;


 int assert (int) ;
 int ensure_incremental_xref (int *,TYPE_3__*) ;
 int pdf_resize_xref (int *,TYPE_3__*,int) ;

__attribute__((used)) static pdf_xref_entry *pdf_get_incremental_xref_entry(fz_context *ctx, pdf_document *doc, int i)
{
 pdf_xref *xref;
 pdf_xref_subsec *sub;


 ensure_incremental_xref(ctx, doc);

 xref = &doc->xref_sections[doc->xref_base];
 if (i >= xref->num_objects)
  pdf_resize_xref(ctx, doc, i + 1);

 sub = xref->subsec;
 assert(sub != ((void*)0) && sub->next == ((void*)0));
 assert(i >= sub->start && i < sub->start + sub->len);
 doc->xref_index[i] = 0;
 return &sub->table[i - sub->start];
}
