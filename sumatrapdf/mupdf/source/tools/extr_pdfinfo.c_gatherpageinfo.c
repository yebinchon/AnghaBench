
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_5__ {int doc; } ;
typedef TYPE_1__ globals ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int PDF_NAME (int ) ;
 int Resources ;
 int fz_throw (int *,int ,char*,int) ;
 int gatherdimensions (int *,TYPE_1__*,int,int *) ;
 int gatherresourceinfo (int *,TYPE_1__*,int,int *,int) ;
 int * pdf_dict_get (int *,int *,int ) ;
 int * pdf_lookup_page_obj (int *,int ,int) ;

__attribute__((used)) static void
gatherpageinfo(fz_context *ctx, globals *glo, int page, int show)
{
 pdf_obj *pageref;
 pdf_obj *rsrc;

 pageref = pdf_lookup_page_obj(ctx, glo->doc, page-1);

 if (!pageref)
  fz_throw(ctx, FZ_ERROR_GENERIC, "cannot retrieve info from page %d", page);

 gatherdimensions(ctx, glo, page, pageref);

 rsrc = pdf_dict_get(ctx, pageref, PDF_NAME(Resources));
 gatherresourceinfo(ctx, glo, page, rsrc, show);
}
