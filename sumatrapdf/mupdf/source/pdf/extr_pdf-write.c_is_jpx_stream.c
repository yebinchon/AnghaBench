
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int Filter ;
 int PDF_NAME (int ) ;
 int is_jpx_filter (int *,int *) ;
 int * pdf_dict_get (int *,int *,int ) ;

__attribute__((used)) static int is_jpx_stream(fz_context *ctx, pdf_obj *obj)
{
 pdf_obj *o;
 if (o = pdf_dict_get(ctx, obj, PDF_NAME(Filter)), is_jpx_filter(ctx, o))
  return 1;
 return 0;
}
