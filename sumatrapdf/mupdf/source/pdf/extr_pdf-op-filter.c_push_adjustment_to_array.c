
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_3__ {int Tm_adjust; } ;
typedef TYPE_1__ pdf_filter_processor ;
typedef int fz_context ;


 int pdf_array_push_real (int *,int *,int) ;

__attribute__((used)) static void
push_adjustment_to_array(fz_context *ctx, pdf_filter_processor *p, pdf_obj *arr)
{
 if (p->Tm_adjust == 0)
  return;
 pdf_array_push_real(ctx, arr, p->Tm_adjust * 1000);
 p->Tm_adjust = 0;
}
