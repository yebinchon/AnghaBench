
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_5__ {int n; int* c1; void** c0; } ;
struct TYPE_6__ {TYPE_1__ e; } ;
struct TYPE_7__ {int m; scalar_t__** domain; int n; TYPE_2__ u; } ;
typedef TYPE_3__ pdf_function ;
typedef int fz_context ;


 int C0 ;
 int C1 ;
 int N ;
 int PDF_NAME (int ) ;
 int fz_mini (int,int ) ;
 int fz_warn (int *,char*) ;
 void* pdf_array_get_real (int *,int *,int) ;
 int pdf_array_len (int *,int *) ;
 int * pdf_dict_get (int *,int *,int ) ;
 scalar_t__ pdf_is_array (int *,int *) ;
 int pdf_to_real (int *,int *) ;

__attribute__((used)) static void
load_exponential_func(fz_context *ctx, pdf_function *func, pdf_obj *dict)
{
 pdf_obj *obj;
 int i;

 if (func->m > 1)
  fz_warn(ctx, "exponential functions have at most one input");
 func->m = 1;

 obj = pdf_dict_get(ctx, dict, PDF_NAME(N));
 func->u.e.n = pdf_to_real(ctx, obj);


 if (func->u.e.n != (int) func->u.e.n)
 {

  for (i = 0; i < func->m; i++)
   if (func->domain[i][0] < 0 || func->domain[i][1] < 0)
    fz_warn(ctx, "exponential function input domain includes illegal negative input values");
 }
 else if (func->u.e.n < 0)
 {

  for (i = 0; i < func->m; i++)
   if (func->domain[i][0] == 0 || func->domain[i][1] == 0 ||
    (func->domain[i][0] < 0 && func->domain[i][1] > 0))
    fz_warn(ctx, "exponential function input domain includes illegal input value zero");
 }

 for (i = 0; i < func->n; i++)
 {
  func->u.e.c0[i] = 0;
  func->u.e.c1[i] = 1;
 }

 obj = pdf_dict_get(ctx, dict, PDF_NAME(C0));
 if (pdf_is_array(ctx, obj))
 {
  int ranges = fz_mini(func->n, pdf_array_len(ctx, obj));
  if (ranges != func->n)
   fz_warn(ctx, "wrong number of C0 constants for exponential function");

  for (i = 0; i < ranges; i++)
   func->u.e.c0[i] = pdf_array_get_real(ctx, obj, i);
 }

 obj = pdf_dict_get(ctx, dict, PDF_NAME(C1));
 if (pdf_is_array(ctx, obj))
 {
  int ranges = fz_mini(func->n, pdf_array_len(ctx, obj));
  if (ranges != func->n)
   fz_warn(ctx, "wrong number of C1 constants for exponential function");

  for (i = 0; i < ranges; i++)
   func->u.e.c1[i] = pdf_array_get_real(ctx, obj, i);
 }
}
