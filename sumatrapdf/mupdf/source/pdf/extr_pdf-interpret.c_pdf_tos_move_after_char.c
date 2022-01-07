
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int char_ty; int char_tx; int tm; int char_bbox; int text_bbox; } ;
typedef TYPE_1__ pdf_text_object_state ;
typedef int fz_context ;


 int fz_pre_translate (int ,int ,int ) ;
 int fz_union_rect (int ,int ) ;

void
pdf_tos_move_after_char(fz_context *ctx, pdf_text_object_state *tos)
{
 tos->text_bbox = fz_union_rect(tos->text_bbox, tos->char_bbox);
 tos->tm = fz_pre_translate(tos->tm, tos->char_tx, tos->char_ty);
}
