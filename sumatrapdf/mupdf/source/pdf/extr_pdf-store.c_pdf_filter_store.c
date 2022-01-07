
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;


 int * pdf_get_bound_document (int *,int *) ;

__attribute__((used)) static int
pdf_filter_store(fz_context *ctx, void *doc_, void *key)
{
 pdf_document *doc = (pdf_document *)doc_;
 pdf_obj *obj = (pdf_obj *)key;
 pdf_document *key_doc = pdf_get_bound_document(ctx, obj);

 return (doc == key_doc);
}
