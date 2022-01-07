
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_document ;
typedef int fz_document ;
typedef int fz_context ;


 int * pdf_document_from_fz_document (int *,int *) ;

pdf_document *pdf_specifics(fz_context *ctx, fz_document *doc)
{
 return pdf_document_from_fz_document(ctx, doc);
}
