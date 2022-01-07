
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int len; scalar_t__ start; TYPE_1__* table; int * next; } ;
typedef TYPE_2__ pdf_xref_subsec ;
struct TYPE_8__ {int num_objects; TYPE_2__* subsec; } ;
typedef TYPE_3__ pdf_xref ;
struct TYPE_9__ {size_t xref_base; TYPE_3__* xref_sections; } ;
typedef TYPE_4__ pdf_document ;
typedef int fz_context ;
struct TYPE_6__ {scalar_t__ type; } ;


 int assert (int) ;

int pdf_xref_is_incremental(fz_context *ctx, pdf_document *doc, int num)
{
 pdf_xref *xref = &doc->xref_sections[doc->xref_base];
 pdf_xref_subsec *sub = xref->subsec;

 assert(sub != ((void*)0) && sub->next == ((void*)0) && sub->len == xref->num_objects && sub->start == 0);

 return num < xref->num_objects && sub->table[num].type;
}
