
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ start; int len; TYPE_5__* table; int * next; } ;
typedef TYPE_1__ pdf_xref_subsec ;
struct TYPE_9__ {int num_objects; TYPE_1__* subsec; } ;
typedef TYPE_2__ pdf_xref ;
struct TYPE_10__ {size_t xref_base; int max_xref_len; TYPE_2__* xref_sections; } ;
typedef TYPE_3__ pdf_document ;
typedef int fz_context ;
struct TYPE_11__ {int * obj; int * stm_buf; scalar_t__ stm_ofs; scalar_t__ num; scalar_t__ gen; scalar_t__ ofs; scalar_t__ type; } ;


 int assert (int) ;
 int extend_xref_index (int *,TYPE_3__*,int) ;
 TYPE_5__* fz_realloc_array (int *,TYPE_5__*,int,int ) ;
 int pdf_xref_entry ;

__attribute__((used)) static void pdf_resize_xref(fz_context *ctx, pdf_document *doc, int newlen)
{
 int i;
 pdf_xref *xref = &doc->xref_sections[doc->xref_base];
 pdf_xref_subsec *sub;

 assert(xref != ((void*)0));
 sub = xref->subsec;
 assert(sub->next == ((void*)0) && sub->start == 0 && sub->len == xref->num_objects);
 assert(newlen > xref->num_objects);

 sub->table = fz_realloc_array(ctx, sub->table, newlen, pdf_xref_entry);
 for (i = xref->num_objects; i < newlen; i++)
 {
  sub->table[i].type = 0;
  sub->table[i].ofs = 0;
  sub->table[i].gen = 0;
  sub->table[i].num = 0;
  sub->table[i].stm_ofs = 0;
  sub->table[i].stm_buf = ((void*)0);
  sub->table[i].obj = ((void*)0);
 }
 xref->num_objects = newlen;
 sub->len = newlen;
 if (doc->max_xref_len < newlen)
  extend_xref_index(ctx, doc, newlen);
}
