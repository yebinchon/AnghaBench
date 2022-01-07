
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_matrix ;
typedef int fz_context ;


 int Matrix ;
 int PDF_NAME (int ) ;
 int pdf_dict_get_matrix (int *,int *,int ) ;

fz_matrix
pdf_xobject_matrix(fz_context *ctx, pdf_obj *xobj)
{
 return pdf_dict_get_matrix(ctx, xobj, PDF_NAME(Matrix));
}
