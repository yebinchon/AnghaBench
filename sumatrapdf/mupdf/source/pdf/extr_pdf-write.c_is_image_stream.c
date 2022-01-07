
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int Filter ;
 int Height ;
 int Image ;
 int PDF_NAME (int ) ;
 int Subtype ;
 int Type ;
 int Width ;
 int XObject ;
 int filter_implies_image (int *,int *) ;
 int * pdf_dict_get (int *,int *,int ) ;
 int pdf_name_eq (int *,int *,int ) ;

__attribute__((used)) static int is_image_stream(fz_context *ctx, pdf_obj *obj)
{
 pdf_obj *o;
 if ((o = pdf_dict_get(ctx, obj, PDF_NAME(Type)), pdf_name_eq(ctx, o, PDF_NAME(XObject))))
  if ((o = pdf_dict_get(ctx, obj, PDF_NAME(Subtype)), pdf_name_eq(ctx, o, PDF_NAME(Image))))
   return 1;
 if (o = pdf_dict_get(ctx, obj, PDF_NAME(Filter)), filter_implies_image(ctx, o))
  return 1;
 if (pdf_dict_get(ctx, obj, PDF_NAME(Width)) != ((void*)0) && pdf_dict_get(ctx, obj, PDF_NAME(Height)) != ((void*)0))
  return 1;
 return 0;
}
