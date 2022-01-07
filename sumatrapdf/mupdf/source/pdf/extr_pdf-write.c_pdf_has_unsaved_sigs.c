
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ unsaved_sigs; } ;
typedef TYPE_1__ pdf_xref ;
struct TYPE_5__ {int num_incremental_sections; TYPE_1__* xref_sections; } ;
typedef TYPE_2__ pdf_document ;
typedef int fz_context ;



int pdf_has_unsaved_sigs(fz_context *ctx, pdf_document *doc)
{
 int s;
 for (s = 0; s < doc->num_incremental_sections; s++)
 {
  pdf_xref *xref = &doc->xref_sections[doc->num_incremental_sections - s - 1];

  if (xref->unsaved_sigs)
   return 1;
 }
 return 0;
}
