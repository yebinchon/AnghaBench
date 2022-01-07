
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pdf_obj ;
typedef int pdf_document ;
struct TYPE_3__ {scalar_t__ x0; scalar_t__ y0; scalar_t__ x1; scalar_t__ y1; } ;
typedef TYPE_1__ fz_rect ;
typedef int fz_context ;


 void* pdf_array_get_real (int *,int *,int) ;
 int pdf_array_push_real (int *,int *,scalar_t__) ;
 int * pdf_dict_get (int *,int *,int *) ;
 int pdf_dict_put_drop (int *,int *,int *,int *) ;
 int * pdf_new_array (int *,int *,int) ;

__attribute__((used)) static void
intersect_box(fz_context *ctx, pdf_document *doc, pdf_obj *page, pdf_obj *box_name, fz_rect mb)
{
 pdf_obj *box = pdf_dict_get(ctx, page, box_name);
 pdf_obj *newbox;
 fz_rect old_rect;

 if (box == ((void*)0))
  return;

 old_rect.x0 = pdf_array_get_real(ctx, box, 0);
 old_rect.y0 = pdf_array_get_real(ctx, box, 1);
 old_rect.x1 = pdf_array_get_real(ctx, box, 2);
 old_rect.y1 = pdf_array_get_real(ctx, box, 3);

 if (old_rect.x0 < mb.x0)
  old_rect.x0 = mb.x0;
 if (old_rect.y0 < mb.y0)
  old_rect.y0 = mb.y0;
 if (old_rect.x1 > mb.x1)
  old_rect.x1 = mb.x1;
 if (old_rect.y1 > mb.y1)
  old_rect.y1 = mb.y1;

 newbox = pdf_new_array(ctx, doc, 4);
 pdf_array_push_real(ctx, newbox, old_rect.x0);
 pdf_array_push_real(ctx, newbox, old_rect.y0);
 pdf_array_push_real(ctx, newbox, old_rect.x1);
 pdf_array_push_real(ctx, newbox, old_rect.y1);
 pdf_dict_put_drop(ctx, page, box_name, newbox);
}
