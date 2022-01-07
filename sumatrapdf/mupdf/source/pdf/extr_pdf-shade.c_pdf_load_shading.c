
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_shade ;
typedef int fz_matrix ;
typedef int fz_context ;


 int CA ;
 int ExtGState ;
 int FZ_ERROR_SYNTAX ;
 int Matrix ;
 int PDF_NAME (int ) ;
 int PatternType ;
 int Shading ;
 int ca ;
 int fz_drop_shade_imp ;
 int fz_identity ;
 int fz_shade_size (int *,int *) ;
 int fz_throw (int *,int ,char*) ;
 int fz_warn (int *,char*) ;
 int * pdf_dict_get (int *,int *,int ) ;
 int pdf_dict_get_matrix (int *,int *,int ) ;
 int * pdf_find_item (int *,int ,int *) ;
 int * pdf_load_shading_dict (int *,int *,int *,int ) ;
 int pdf_store_item (int *,int *,int *,int ) ;

fz_shade *
pdf_load_shading(fz_context *ctx, pdf_document *doc, pdf_obj *dict)
{
 fz_matrix mat;
 pdf_obj *obj;
 fz_shade *shade;

 if ((shade = pdf_find_item(ctx, fz_drop_shade_imp, dict)) != ((void*)0))
 {
  return shade;
 }


 if (pdf_dict_get(ctx, dict, PDF_NAME(PatternType)))
 {
  mat = pdf_dict_get_matrix(ctx, dict, PDF_NAME(Matrix));

  obj = pdf_dict_get(ctx, dict, PDF_NAME(ExtGState));
  if (obj)
  {
   if (pdf_dict_get(ctx, obj, PDF_NAME(CA)) || pdf_dict_get(ctx, obj, PDF_NAME(ca)))
   {
    fz_warn(ctx, "shading with alpha not supported");
   }
  }

  obj = pdf_dict_get(ctx, dict, PDF_NAME(Shading));
  if (!obj)
   fz_throw(ctx, FZ_ERROR_SYNTAX, "missing shading dictionary");

  shade = pdf_load_shading_dict(ctx, doc, obj, mat);
 }


 else
 {
  shade = pdf_load_shading_dict(ctx, doc, dict, fz_identity);
 }

 pdf_store_item(ctx, dict, shade, fz_shade_size(ctx, shade));

 return shade;
}
