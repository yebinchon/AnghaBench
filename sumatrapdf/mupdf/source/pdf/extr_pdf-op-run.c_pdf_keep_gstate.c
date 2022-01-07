
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ font; } ;
struct TYPE_5__ {int stroke_state; scalar_t__ softmask_resources; scalar_t__ softmask; TYPE_1__ text; int fill; int stroke; } ;
typedef TYPE_2__ pdf_gstate ;
typedef int fz_context ;


 int fz_keep_stroke_state (int *,int ) ;
 int pdf_keep_font (int *,scalar_t__) ;
 int pdf_keep_material (int *,int *) ;
 int pdf_keep_obj (int *,scalar_t__) ;

__attribute__((used)) static void
pdf_keep_gstate(fz_context *ctx, pdf_gstate *gs)
{
 pdf_keep_material(ctx, &gs->stroke);
 pdf_keep_material(ctx, &gs->fill);
 if (gs->text.font)
  pdf_keep_font(ctx, gs->text.font);
 if (gs->softmask)
  pdf_keep_obj(ctx, gs->softmask);
 if (gs->softmask_resources)
  pdf_keep_obj(ctx, gs->softmask_resources);
 fz_keep_stroke_state(ctx, gs->stroke_state);
}
