
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int font; } ;
struct TYPE_5__ {int stroke_state; int softmask_resources; int softmask; TYPE_1__ text; int fill; int stroke; } ;
typedef TYPE_2__ pdf_gstate ;
typedef int fz_context ;


 int fz_drop_stroke_state (int *,int ) ;
 int pdf_drop_font (int *,int ) ;
 int pdf_drop_material (int *,int *) ;
 int pdf_drop_obj (int *,int ) ;

__attribute__((used)) static void
pdf_drop_gstate(fz_context *ctx, pdf_gstate *gs)
{
 pdf_drop_material(ctx, &gs->stroke);
 pdf_drop_material(ctx, &gs->fill);
 pdf_drop_font(ctx, gs->text.font);
 pdf_drop_obj(ctx, gs->softmask);
 pdf_drop_obj(ctx, gs->softmask_resources);
 fz_drop_stroke_state(ctx, gs->stroke_state);
}
