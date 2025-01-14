
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int start; int len; struct TYPE_7__* next; TYPE_1__* table; } ;
typedef TYPE_2__ pdf_xref_subsec ;
struct TYPE_8__ {TYPE_2__* subsec; } ;
typedef TYPE_3__ pdf_xref ;
struct TYPE_9__ {int* xref_index; int num_xref_sections; TYPE_3__* xref_sections; } ;
typedef TYPE_4__ pdf_document ;
typedef int fz_context ;
struct TYPE_6__ {char type; } ;



__attribute__((used)) static void
pdf_prime_xref_index(fz_context *ctx, pdf_document *doc)
{
 int i, j;
 int *idx = doc->xref_index;

 for (i = doc->num_xref_sections-1; i >= 0; i--)
 {
  pdf_xref *xref = &doc->xref_sections[i];
  pdf_xref_subsec *subsec = xref->subsec;
  while (subsec != ((void*)0))
  {
   int start = subsec->start;
   int end = subsec->start + subsec->len;
   for (j = start; j < end; j++)
   {
    char t = subsec->table[j-start].type;
    if (t != 0 && t != 'f')
     idx[j] = i;
   }

   subsec = subsec->next;
  }
 }
}
