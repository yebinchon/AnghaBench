
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int pdf_document ;
typedef int fz_context ;


 int D ;
 int PDF_NAME (int ) ;
 int * pdf_dict_get (int *,int *,int ) ;
 scalar_t__ pdf_is_array (int *,int *) ;
 scalar_t__ pdf_is_dict (int *,int *) ;
 scalar_t__ pdf_is_indirect (int *,int *) ;
 scalar_t__ pdf_is_name (int *,int *) ;
 scalar_t__ pdf_is_string (int *,int *) ;
 int * pdf_lookup_dest (int *,int *,int *) ;

__attribute__((used)) static pdf_obj *
resolve_dest_rec(fz_context *ctx, pdf_document *doc, pdf_obj *dest, int depth)
{
 if (depth > 10)
  return ((void*)0);

 if (pdf_is_name(ctx, dest) || pdf_is_string(ctx, dest))
 {
  dest = pdf_lookup_dest(ctx, doc, dest);
  dest = resolve_dest_rec(ctx, doc, dest, depth+1);
  return dest;
 }

 else if (pdf_is_array(ctx, dest))
 {
  return dest;
 }

 else if (pdf_is_dict(ctx, dest))
 {
  dest = pdf_dict_get(ctx, dest, PDF_NAME(D));
  return resolve_dest_rec(ctx, doc, dest, depth+1);
 }

 else if (pdf_is_indirect(ctx, dest))
  return dest;

 return ((void*)0);
}
