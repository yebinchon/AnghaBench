
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* unsaved_sigs; } ;
typedef TYPE_1__ pdf_xref ;
struct TYPE_6__ {int * field; struct TYPE_6__* next; } ;
typedef TYPE_2__ pdf_unsaved_sig ;
typedef int pdf_obj ;
struct TYPE_7__ {int num_incremental_sections; TYPE_1__* xref_sections; } ;
typedef TYPE_3__ pdf_document ;



int pdf_xref_obj_is_unsaved_signature(pdf_document *doc, pdf_obj *obj)
{
 int i;
 for (i = 0; i < doc->num_incremental_sections; i++)
 {
  pdf_xref *xref = &doc->xref_sections[i];
  pdf_unsaved_sig *usig;

  for (usig = xref->unsaved_sigs; usig; usig = usig->next)
  {
   if (usig->field == obj)
    return 1;
  }
 }

 return 0;
}
