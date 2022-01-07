
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_4__ {int obj; } ;
typedef TYPE_1__ pdf_annot ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int PDF_NAME (int ) ;
 int Subtype ;
 int fz_throw (int *,int ,char*,int ,int ) ;
 int is_allowed_subtype (int *,TYPE_1__*,int *,int **) ;
 int * pdf_dict_get (int *,int ,int ) ;
 int pdf_to_name (int *,int *) ;

__attribute__((used)) static void check_allowed_subtypes(fz_context *ctx, pdf_annot *annot, pdf_obj *property, pdf_obj **allowed)
{
 pdf_obj *subtype = pdf_dict_get(ctx, annot->obj, PDF_NAME(Subtype));
 if (!is_allowed_subtype(ctx, annot, property, allowed))
  fz_throw(ctx, FZ_ERROR_GENERIC, "%s annotations have no %s property", pdf_to_name(ctx, subtype), pdf_to_name(ctx, property));
}
