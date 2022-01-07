
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;


 int ID ;
 int PDF_NAME (int ) ;
 int fz_memrnd (int *,unsigned char*,int) ;
 int nelem (unsigned char*) ;
 int pdf_array_push_drop (int *,int *,int ) ;
 int * pdf_dict_put_array (int *,int ,int ,int) ;
 int pdf_new_string (int *,char*,int) ;
 int pdf_trailer (int *,int *) ;

__attribute__((used)) static pdf_obj *
new_identity(fz_context *ctx, pdf_document *doc)
{
 unsigned char rnd[32];
 pdf_obj *id;

 fz_memrnd(ctx, rnd, nelem(rnd));

 id = pdf_dict_put_array(ctx, pdf_trailer(ctx, doc), PDF_NAME(ID), 2);
 pdf_array_push_drop(ctx, id, pdf_new_string(ctx, (char *) rnd + 0, nelem(rnd) / 2));
 pdf_array_push_drop(ctx, id, pdf_new_string(ctx, (char *) rnd + 16, nelem(rnd) / 2));

 return id;
}
