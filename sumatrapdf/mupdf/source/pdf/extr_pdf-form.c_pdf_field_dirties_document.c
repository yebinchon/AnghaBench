
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;


 int PDF_FIELD_IS_NO_EXPORT ;
 int PDF_FIELD_IS_READ_ONLY ;
 int pdf_field_flags (int *,int *) ;

__attribute__((used)) static int pdf_field_dirties_document(fz_context *ctx, pdf_document *doc, pdf_obj *field)
{
 int ff = pdf_field_flags(ctx, field);
 if (ff & PDF_FIELD_IS_NO_EXPORT) return 0;
 if (ff & PDF_FIELD_IS_READ_ONLY) return 0;
 return 1;
}
