
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_span_mask_painter_t ;


 int * paint_span_with_mask_0_a ;
 int * paint_span_with_mask_1 ;
 int * paint_span_with_mask_1_a ;
 int * paint_span_with_mask_3 ;
 int * paint_span_with_mask_3_a ;
 int * paint_span_with_mask_4 ;
 int * paint_span_with_mask_4_a ;
 int * paint_span_with_mask_N ;
 int * paint_span_with_mask_N_a ;

__attribute__((used)) static fz_span_mask_painter_t *
fz_get_span_mask_painter(int a, int n)
{
 switch(n)
 {
  case 0:

   return paint_span_with_mask_0_a;
  case 1:
   if (a)
    return paint_span_with_mask_1_a;
   else
    return paint_span_with_mask_1;
  default:
  {






   return ((void*)0);

  }
 }
}
