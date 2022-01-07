
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int ColorSpace ;
 int ExtGState ;
 int Font ;
 int PDF_NAME (int ) ;
 int Parent ;
 int Pattern ;
 int ProcSet ;
 int Properties ;
 int Resources ;
 int Shading ;
 int XObject ;
 int lpr_inherit_res_contents (int *,int *,int *,int ) ;
 int * pdf_dict_get (int *,int *,int ) ;

__attribute__((used)) static void
lpr_inherit_res(fz_context *ctx, pdf_obj *node, int depth, pdf_obj *dict)
{
 while (1)
 {
  pdf_obj *o;

  node = pdf_dict_get(ctx, node, PDF_NAME(Parent));
  depth--;
  if (!node || depth < 0)
   break;

  o = pdf_dict_get(ctx, node, PDF_NAME(Resources));
  if (o)
  {
   lpr_inherit_res_contents(ctx, dict, o, PDF_NAME(ExtGState));
   lpr_inherit_res_contents(ctx, dict, o, PDF_NAME(ColorSpace));
   lpr_inherit_res_contents(ctx, dict, o, PDF_NAME(Pattern));
   lpr_inherit_res_contents(ctx, dict, o, PDF_NAME(Shading));
   lpr_inherit_res_contents(ctx, dict, o, PDF_NAME(XObject));
   lpr_inherit_res_contents(ctx, dict, o, PDF_NAME(Font));
   lpr_inherit_res_contents(ctx, dict, o, PDF_NAME(ProcSet));
   lpr_inherit_res_contents(ctx, dict, o, PDF_NAME(Properties));
  }
 }
}
