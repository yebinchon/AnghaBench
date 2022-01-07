
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int fz_throw (int *,int ,char*) ;
 int pdf_create_object (int *,int *) ;
 int * pdf_get_bound_document (int *,int *) ;
 scalar_t__ pdf_is_indirect (int *,int *) ;
 int * pdf_keep_obj (int *,int *) ;
 int * pdf_new_indirect (int *,int *,int,int ) ;
 int pdf_update_object (int *,int *,int,int *) ;

pdf_obj *
pdf_add_object(fz_context *ctx, pdf_document *doc, pdf_obj *obj)
{
 pdf_document *orig_doc;
 int num;

 orig_doc = pdf_get_bound_document(ctx, obj);
 if (orig_doc && orig_doc != doc)
  fz_throw(ctx, FZ_ERROR_GENERIC, "tried to add an object belonging to a different document");
 if (pdf_is_indirect(ctx, obj))
  return pdf_keep_obj(ctx, obj);
 num = pdf_create_object(ctx, doc);
 pdf_update_object(ctx, doc, num, obj);
 return pdf_new_indirect(ctx, doc, num, 0);
}
