
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;


 int * pdf_get_indirect_document (int *,int *) ;
 int pdf_obj_num_is_stream (int *,int *,int ) ;
 int pdf_to_num (int *,int *) ;

int
pdf_is_stream(fz_context *ctx, pdf_obj *ref)
{
 pdf_document *doc = pdf_get_indirect_document(ctx, ref);
 if (doc)
  return pdf_obj_num_is_stream(ctx, doc, pdf_to_num(ctx, ref));
 return 0;
}
