
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ trailer; scalar_t__ pre_repair_trailer; } ;
typedef TYPE_1__ pdf_xref ;
typedef int pdf_obj ;
struct TYPE_5__ {int num_xref_sections; TYPE_1__* xref_sections; } ;
typedef TYPE_2__ pdf_document ;
typedef int fz_context ;


 int pdf_drop_obj (int *,scalar_t__) ;
 scalar_t__ pdf_keep_obj (int *,int *) ;

void pdf_set_populating_xref_trailer(fz_context *ctx, pdf_document *doc, pdf_obj *trailer)
{

 pdf_xref *xref = &doc->xref_sections[doc->num_xref_sections - 1];
 if (xref->trailer)
 {
  pdf_drop_obj(ctx, xref->pre_repair_trailer);
  xref->pre_repair_trailer = xref->trailer;
 }
 xref->trailer = pdf_keep_obj(ctx, trailer);
}
