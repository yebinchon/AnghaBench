
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_document ;
typedef int fz_context ;


 int pdf_xref_len (int *,int *) ;

int
pdf_count_objects(fz_context *ctx, pdf_document *doc)
{
 return pdf_xref_len(ctx, doc);
}
