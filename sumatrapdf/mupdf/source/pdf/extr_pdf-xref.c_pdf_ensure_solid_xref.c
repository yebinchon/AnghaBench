
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ num_xref_sections; } ;
typedef TYPE_1__ pdf_document ;
typedef int fz_context ;


 int ensure_solid_xref (int *,TYPE_1__*,int,scalar_t__) ;
 int pdf_populate_next_xref_level (int *,TYPE_1__*) ;

void pdf_ensure_solid_xref(fz_context *ctx, pdf_document *doc, int num)
{
 if (doc->num_xref_sections == 0)
  pdf_populate_next_xref_level(ctx, doc);

 ensure_solid_xref(ctx, doc, num, doc->num_xref_sections-1);
}
