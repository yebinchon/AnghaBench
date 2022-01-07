
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_4__ {int obj; } ;
typedef TYPE_1__ pdf_annot ;
typedef int fz_context ;


 int FileAttachment ;
 int Name ;
 int PDF_NAME (int ) ;
 int Sound ;
 int Stamp ;
 int Subtype ;
 int Text ;
 int check_allowed_subtypes (int *,TYPE_1__*,int ,int ) ;
 int icon_name_subtypes ;
 int * pdf_dict_get (int *,int ,int ) ;
 scalar_t__ pdf_name_eq (int *,int *,int ) ;
 char const* pdf_to_name (int *,int *) ;

const char *
pdf_annot_icon_name(fz_context *ctx, pdf_annot *annot)
{
 pdf_obj *name;
 check_allowed_subtypes(ctx, annot, PDF_NAME(Name), icon_name_subtypes);
 name = pdf_dict_get(ctx, annot->obj, PDF_NAME(Name));
 if (!name)
 {
  pdf_obj *subtype = pdf_dict_get(ctx, annot->obj, PDF_NAME(Subtype));
  if (pdf_name_eq(ctx, subtype, PDF_NAME(Text)))
   return "Note";
  if (pdf_name_eq(ctx, subtype, PDF_NAME(Stamp)))
   return "Draft";
  if (pdf_name_eq(ctx, subtype, PDF_NAME(FileAttachment)))
   return "PushPin";
  if (pdf_name_eq(ctx, subtype, PDF_NAME(Sound)))
   return "Speaker";
 }
 return pdf_to_name(ctx, name);
}
