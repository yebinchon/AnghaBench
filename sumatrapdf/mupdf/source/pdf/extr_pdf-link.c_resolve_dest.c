
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;


 int * resolve_dest_rec (int *,int *,int *,int ) ;

__attribute__((used)) static pdf_obj *
resolve_dest(fz_context *ctx, pdf_document *doc, pdf_obj *dest)
{
 return resolve_dest_rec(ctx, doc, dest, 0);
}
