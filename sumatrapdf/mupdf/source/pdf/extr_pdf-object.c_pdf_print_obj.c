
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_output ;
typedef int fz_context ;


 int pdf_print_encrypted_obj (int *,int *,int *,int,int,int *,int ,int ) ;

void pdf_print_obj(fz_context *ctx, fz_output *out, pdf_obj *obj, int tight, int ascii)
{
 pdf_print_encrypted_obj(ctx, out, obj, tight, ascii, ((void*)0), 0, 0);
}
