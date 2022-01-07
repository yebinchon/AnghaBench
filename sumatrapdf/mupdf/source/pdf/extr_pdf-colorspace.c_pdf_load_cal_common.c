
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int BlackPoint ;
 int FZ_ERROR_SYNTAX ;
 int Gamma ;
 int PDF_NAME (int ) ;
 int WhitePoint ;
 int fz_throw (int *,int ,char*) ;
 float pdf_array_get_real (int *,int *,int) ;
 int pdf_array_len (int *,int *) ;
 int * pdf_dict_get (int *,int *,int ) ;
 scalar_t__ pdf_is_number (int *,int *) ;
 float pdf_to_real (int *,int *) ;

__attribute__((used)) static void
pdf_load_cal_common(fz_context *ctx, pdf_obj *dict, float *wp, float *bp, float *gamma)
{
 pdf_obj *obj;
 int i;

 obj = pdf_dict_get(ctx, dict, PDF_NAME(WhitePoint));
 if (pdf_array_len(ctx, obj) != 3)
  fz_throw(ctx, FZ_ERROR_SYNTAX, "WhitePoint must be a 3-element array");

 for (i = 0; i < 3; i++)
 {
  wp[i] = pdf_array_get_real(ctx, obj, i);
  if (wp[i] < 0)
   fz_throw(ctx, FZ_ERROR_SYNTAX, "WhitePoint numbers must be positive");
 }
 if (wp[1] != 1)
  fz_throw(ctx, FZ_ERROR_SYNTAX, "WhitePoint Yw must be 1.0");

 obj = pdf_dict_get(ctx, dict, PDF_NAME(BlackPoint));
 if (pdf_array_len(ctx, obj) == 3)
 {
  for (i = 0; i < 3; i++)
  {
   bp[i] = pdf_array_get_real(ctx, obj, i);
   if (bp[i] < 0)
    fz_throw(ctx, FZ_ERROR_SYNTAX, "BlackPoint numbers must be positive");
  }
 }

 obj = pdf_dict_get(ctx, dict, PDF_NAME(Gamma));
 if (pdf_is_number(ctx, obj))
 {
  gamma[0] = pdf_to_real(ctx, obj);
  gamma[1] = gamma[2];
  if (gamma[0] <= 0)
   fz_throw(ctx, FZ_ERROR_SYNTAX, "Gamma must be greater than zero");
 }
 else if (pdf_array_len(ctx, obj) == 3)
 {
  for (i = 0; i < 3; i++)
  {
   gamma[i] = pdf_array_get_real(ctx, obj, i);
   if (gamma[i] <= 0)
    fz_throw(ctx, FZ_ERROR_SYNTAX, "Gamma must be greater than zero");
  }
 }
}
