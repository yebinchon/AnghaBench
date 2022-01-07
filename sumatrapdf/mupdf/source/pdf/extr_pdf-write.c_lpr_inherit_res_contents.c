
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int * pdf_copy_array (int *,int *) ;
 int * pdf_copy_dict (int *,int *) ;
 int * pdf_dict_get (int *,int *,int *) ;
 int * pdf_dict_get_key (int *,int *,int) ;
 int * pdf_dict_get_val (int *,int *,int) ;
 int pdf_dict_len (int *,int *) ;
 int pdf_dict_put (int *,int *,int *,int *) ;
 int pdf_dict_put_drop (int *,int *,int *,int *) ;
 scalar_t__ pdf_is_array (int *,int *) ;
 scalar_t__ pdf_is_dict (int *,int *) ;
 int * pdf_resolve_indirect (int *,int *) ;

__attribute__((used)) static void
lpr_inherit_res_contents(fz_context *ctx, pdf_obj *res, pdf_obj *dict, pdf_obj *text)
{
 pdf_obj *o, *r;
 int i, n;


 o = pdf_dict_get(ctx, dict, text);
 if (!o)
  return;



 r = pdf_dict_get(ctx, res, text);
 if (r == ((void*)0))
 {
  o = pdf_resolve_indirect(ctx, o);
  if (pdf_is_dict(ctx, o))
   o = pdf_copy_dict(ctx, o);
  else if (pdf_is_array(ctx, o))
   o = pdf_copy_array(ctx, o);
  else
   o = ((void*)0);
  if (o)
   pdf_dict_put_drop(ctx, res, text, o);
  return;
 }


 if (pdf_is_dict(ctx, o))
 {
  n = pdf_dict_len(ctx, o);
  for (i = 0; i < n; i++)
  {
   pdf_obj *key = pdf_dict_get_key(ctx, o, i);
   pdf_obj *val = pdf_dict_get_val(ctx, o, i);

   if (pdf_dict_get(ctx, res, key))
    continue;
   pdf_dict_put(ctx, res, key, val);
  }
 }
}
