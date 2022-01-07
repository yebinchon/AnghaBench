
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int fz_warn (int *,char*,int ) ;
 scalar_t__ pdf_is_indirect (int *,int *) ;
 int * pdf_resolve_indirect (int *,int *) ;
 int pdf_to_num (int *,int *) ;

pdf_obj *
pdf_resolve_indirect_chain(fz_context *ctx, pdf_obj *ref)
{
 int sanity = 10;

 while (pdf_is_indirect(ctx, ref))
 {
  if (--sanity == 0)
  {
   fz_warn(ctx, "too many indirections (possible indirection cycle involving %d 0 R)", pdf_to_num(ctx, ref));
   return ((void*)0);
  }

  ref = pdf_resolve_indirect(ctx, ref);
 }

 return ref;
}
