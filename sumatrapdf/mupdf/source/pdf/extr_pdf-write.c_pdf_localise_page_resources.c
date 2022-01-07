
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int resources_localised; } ;
typedef TYPE_1__ pdf_document ;
typedef int fz_context ;


 int PDF_NAME (int ) ;
 int Pages ;
 int Root ;
 int lpr (int *,TYPE_1__*,int ,int ,int ) ;
 int pdf_dict_getl (int *,int ,int ,int ,int *) ;
 int pdf_trailer (int *,TYPE_1__*) ;

void
pdf_localise_page_resources(fz_context *ctx, pdf_document *doc)
{
 if (doc->resources_localised)
  return;

 lpr(ctx, doc, pdf_dict_getl(ctx, pdf_trailer(ctx, doc), PDF_NAME(Root), PDF_NAME(Pages), ((void*)0)), 0, 0);

 doc->resources_localised = 1;
}
