
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ num_incremental_sections; scalar_t__ num_xref_sections; int * xref_sections; scalar_t__ saved_num_xref_sections; int * saved_xref_sections; } ;
typedef TYPE_1__ pdf_document ;
typedef int fz_context ;


 int pdf_drop_xref_sections_imp (int *,TYPE_1__*,int *,scalar_t__) ;

__attribute__((used)) static void pdf_drop_xref_sections(fz_context *ctx, pdf_document *doc)
{
 pdf_drop_xref_sections_imp(ctx, doc, doc->saved_xref_sections, doc->saved_num_xref_sections);
 pdf_drop_xref_sections_imp(ctx, doc, doc->xref_sections, doc->num_xref_sections);

 doc->saved_xref_sections = ((void*)0);
 doc->saved_num_xref_sections = 0;
 doc->xref_sections = ((void*)0);
 doc->num_xref_sections = 0;
 doc->num_incremental_sections = 0;
}
