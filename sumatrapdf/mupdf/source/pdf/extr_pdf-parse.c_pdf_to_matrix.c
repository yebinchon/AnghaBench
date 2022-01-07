
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_4__ {void* f; void* e; void* d; void* c; void* b; void* a; } ;
typedef TYPE_1__ fz_matrix ;
typedef int fz_context ;


 TYPE_1__ fz_identity ;
 void* pdf_array_get_real (int *,int *,int) ;
 int pdf_is_array (int *,int *) ;

fz_matrix
pdf_to_matrix(fz_context *ctx, pdf_obj *array)
{
 if (!pdf_is_array(ctx, array))
  return fz_identity;
 else
 {
  fz_matrix m;
  m.a = pdf_array_get_real(ctx, array, 0);
  m.b = pdf_array_get_real(ctx, array, 1);
  m.c = pdf_array_get_real(ctx, array, 2);
  m.d = pdf_array_get_real(ctx, array, 3);
  m.e = pdf_array_get_real(ctx, array, 4);
  m.f = pdf_array_get_real(ctx, array, 5);
  return m;
 }
}
