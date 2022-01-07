
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;


 int fz_memrnd (int *,unsigned char*,int) ;
 int pdf_array_len (int *,int *) ;
 int pdf_array_put_drop (int *,int *,int,int ) ;
 int pdf_new_string (int *,char*,int) ;

__attribute__((used)) static void
change_identity(fz_context *ctx, pdf_document *doc, pdf_obj *id)
{
 unsigned char rnd[16];
 if (pdf_array_len(ctx, id) >= 2)
 {

  fz_memrnd(ctx, rnd, 16);
  pdf_array_put_drop(ctx, id, 1, pdf_new_string(ctx, (char *)rnd, 16));
 }
}
