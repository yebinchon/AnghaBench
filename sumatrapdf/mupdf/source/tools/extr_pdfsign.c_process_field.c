
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;


 int FT ;
 scalar_t__ PDF_NAME (int ) ;
 int Sig ;
 scalar_t__ clear ;
 int clear_signature (int *,int *,int *) ;
 int fz_warn (int *,char*,int ) ;
 scalar_t__ list ;
 int list_signature (int *,int *,int *) ;
 scalar_t__ pdf_dict_get_inheritable (int *,int *,scalar_t__) ;
 int pdf_to_num (int *,int *) ;
 scalar_t__ sign ;
 int sign_signature (int *,int *,int *) ;
 scalar_t__ verify ;
 int verify_signature (int *,int *,int *) ;

__attribute__((used)) static void process_field(fz_context *ctx, pdf_document *doc, pdf_obj *field)
{
 if (pdf_dict_get_inheritable(ctx, field, PDF_NAME(FT)) != PDF_NAME(Sig))
  fz_warn(ctx, "%d is not a signature, skipping", pdf_to_num(ctx, field));
 else
 {
  if (list)
   list_signature(ctx, doc, field);
  if (verify)
   verify_signature(ctx, doc, field);
  if (clear)
   clear_signature(ctx, doc, field);
  if (sign)
   sign_signature(ctx, doc, field);
 }
}
