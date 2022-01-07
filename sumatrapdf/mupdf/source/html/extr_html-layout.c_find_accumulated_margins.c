
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* up; scalar_t__* border; scalar_t__* padding; scalar_t__* margin; } ;
typedef TYPE_1__ fz_html_box ;
typedef int fz_context ;


 size_t B ;
 size_t L ;
 size_t R ;
 size_t T ;
 scalar_t__ fz_html_box_has_boxes (TYPE_1__*) ;

__attribute__((used)) static void find_accumulated_margins(fz_context *ctx, fz_html_box *box, float *w, float *h)
{
 while (box)
 {
  if (fz_html_box_has_boxes(box)) {

   *h += box->margin[T] + box->padding[T] + box->border[T];
   *h += box->margin[B] + box->padding[B] + box->border[B];
   *w += box->margin[L] + box->padding[L] + box->border[L];
   *w += box->margin[R] + box->padding[R] + box->border[R];
  }
  box = box->up;
 }
}
