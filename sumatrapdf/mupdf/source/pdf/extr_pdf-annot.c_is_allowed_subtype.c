
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_3__ {int obj; } ;
typedef TYPE_1__ pdf_annot ;
typedef int fz_context ;


 int PDF_NAME (int ) ;
 int Subtype ;
 int * pdf_dict_get (int *,int ,int ) ;
 scalar_t__ pdf_name_eq (int *,int *,int *) ;

__attribute__((used)) static int is_allowed_subtype(fz_context *ctx, pdf_annot *annot, pdf_obj *property, pdf_obj **allowed)
{
 pdf_obj *subtype = pdf_dict_get(ctx, annot->obj, PDF_NAME(Subtype));
 while (*allowed) {
  if (pdf_name_eq(ctx, subtype, *allowed))
   return 1;
  allowed++;
 }

 return 0;
}
