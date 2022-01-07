
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int font; } ;
struct TYPE_6__ {int stroke_state; int softmask; TYPE_1__ text; int ctm; } ;
typedef TYPE_2__ pdf_gstate ;
typedef int fz_context ;


 int fz_drop_stroke_state (int *,int ) ;
 int fz_keep_stroke_state (int *,int ) ;
 int pdf_drop_font (int *,int ) ;
 int pdf_drop_obj (int *,int ) ;
 int pdf_keep_font (int *,int ) ;
 int pdf_keep_obj (int *,int ) ;

__attribute__((used)) static void
pdf_copy_pattern_gstate(fz_context *ctx, pdf_gstate *dst, const pdf_gstate *src)
{
 dst->ctm = src->ctm;

 pdf_drop_font(ctx, dst->text.font);
 dst->text.font = pdf_keep_font(ctx, src->text.font);

 pdf_drop_obj(ctx, dst->softmask);
 dst->softmask = pdf_keep_obj(ctx, src->softmask);

 fz_drop_stroke_state(ctx, dst->stroke_state);
 dst->stroke_state = fz_keep_stroke_state(ctx, src->stroke_state);
}
