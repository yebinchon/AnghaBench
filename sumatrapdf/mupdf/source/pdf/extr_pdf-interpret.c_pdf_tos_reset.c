
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int text_mode; int text_bbox; int text; } ;
typedef TYPE_1__ pdf_text_object_state ;
typedef int fz_context ;


 int fz_empty_rect ;
 int fz_new_text (int *) ;

void
pdf_tos_reset(fz_context *ctx, pdf_text_object_state *tos, int render)
{
 tos->text = fz_new_text(ctx);
 tos->text_mode = render;
 tos->text_bbox = fz_empty_rect;
}
