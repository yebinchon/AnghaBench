
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_rect ;
typedef int fz_matrix ;
typedef int fz_context ;
typedef int fz_buffer ;


 int BBox ;
 int Matrix ;
 int PDF_NAME (int ) ;
 int Resources ;
 int pdf_dict_del (int *,int *,int ) ;
 int pdf_dict_put (int *,int *,int ,int *) ;
 int pdf_dict_put_matrix (int *,int *,int ,int ) ;
 int pdf_dict_put_rect (int *,int *,int ,int ) ;
 int pdf_update_stream (int *,int *,int *,int *,int ) ;

void
pdf_update_xobject(fz_context *ctx, pdf_document *doc, pdf_obj *form, fz_rect bbox, fz_matrix matrix, pdf_obj *res, fz_buffer *contents)
{
 pdf_dict_put_rect(ctx, form, PDF_NAME(BBox), bbox);
 pdf_dict_put_matrix(ctx, form, PDF_NAME(Matrix), matrix);
 if (res)
  pdf_dict_put(ctx, form, PDF_NAME(Resources), res);
 else
  pdf_dict_del(ctx, form, PDF_NAME(Resources));
 pdf_update_stream(ctx, doc, form, contents, 0);
}
