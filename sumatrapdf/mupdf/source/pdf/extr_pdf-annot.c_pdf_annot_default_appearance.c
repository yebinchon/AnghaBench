
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_5__ {TYPE_1__* page; int obj; } ;
typedef TYPE_2__ pdf_annot ;
typedef int fz_context ;
struct TYPE_4__ {int doc; } ;


 int AcroForm ;
 int DA ;
 int PDF_NAME (int ) ;
 int Root ;
 int * pdf_dict_get_inheritable (int *,int ,int ) ;
 int * pdf_dict_getl (int *,int *,int ,int ,int ,int *) ;
 int pdf_parse_default_appearance (int *,int ,char const**,float*,float*) ;
 int pdf_to_str_buf (int *,int *) ;
 int * pdf_trailer (int *,int ) ;

void
pdf_annot_default_appearance(fz_context *ctx, pdf_annot *annot, const char **font, float *size, float color[3])
{
 pdf_obj *da = pdf_dict_get_inheritable(ctx, annot->obj, PDF_NAME(DA));
 if (!da)
 {
  pdf_obj *trailer = pdf_trailer(ctx, annot->page->doc);
  da = pdf_dict_getl(ctx, trailer, PDF_NAME(Root), PDF_NAME(AcroForm), PDF_NAME(DA), ((void*)0));
 }
 pdf_parse_default_appearance(ctx, pdf_to_str_buf(ctx, da), font, size, color);
}
