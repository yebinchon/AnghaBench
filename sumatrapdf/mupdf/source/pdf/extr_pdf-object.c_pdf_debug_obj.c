
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int pdf_debug_encrypted_obj (int *,int ,int ,int *,int ,int ) ;
 int pdf_resolve_indirect (int *,int *) ;
 int putchar (char) ;

void pdf_debug_obj(fz_context *ctx, pdf_obj *obj)
{
 pdf_debug_encrypted_obj(ctx, pdf_resolve_indirect(ctx, obj), 0, ((void*)0), 0, 0);
 putchar('\n');
}
