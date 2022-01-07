
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;


 int AS ;
 int Off ;
 int * PDF_NAME (int ) ;
 scalar_t__ pdf_dict_get (int *,int *,int *) ;
 int * pdf_dict_getp (int *,int *,char*) ;
 int pdf_dict_put (int *,int *,int *,int *) ;

__attribute__((used)) static void set_check(fz_context *ctx, pdf_document *doc, pdf_obj *chk, pdf_obj *name)
{
 pdf_obj *n = pdf_dict_getp(ctx, chk, "AP/N");
 pdf_obj *val;



 if (pdf_dict_get(ctx, n, name))
  val = name;
 else
  val = PDF_NAME(Off);

 pdf_dict_put(ctx, chk, PDF_NAME(AS), val);
}
