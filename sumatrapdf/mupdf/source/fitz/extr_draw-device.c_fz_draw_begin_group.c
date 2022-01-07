
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int fz_rect ;
struct TYPE_13__ {scalar_t__ alpha; int * seps; int * colorspace; } ;
typedef TYPE_1__ fz_pixmap ;
typedef int fz_irect ;
struct TYPE_14__ {int blendmode; float alpha; int scissor; TYPE_1__* group_alpha; TYPE_1__* shape; TYPE_1__* dest; } ;
typedef TYPE_2__ fz_draw_state ;
struct TYPE_15__ {size_t top; int default_cs; int transform; scalar_t__ resolve_spots; TYPE_2__* stack; } ;
typedef TYPE_3__ fz_draw_device ;
typedef int fz_device ;
typedef int fz_context ;
typedef int fz_colorspace ;


 int FZ_BLEND_ISOLATED ;
 int FZ_BLEND_KNOCKOUT ;
 int dump_spaces (int,char*) ;
 int fz_clear_pixmap (int *,TYPE_1__*) ;
 int fz_copy_pixmap_rect (int *,TYPE_1__*,TYPE_1__*,int ,int ) ;
 int fz_default_color_params ;
 int * fz_default_colorspace (int *,int ,int *) ;
 int fz_dump_blend (int *,char*,TYPE_1__*) ;
 int fz_intersect_irect (int ,int ) ;
 int fz_irect_from_rect (int ) ;
 int fz_knockout_begin (int *,TYPE_3__*) ;
 void* fz_new_pixmap_with_bbox (int *,int *,int ,int *,int) ;
 int fz_transform_rect (int ,int ) ;
 int printf (char*) ;
 TYPE_2__* push_group_for_separations (int *,TYPE_3__*,int ,int ) ;
 TYPE_2__* push_stack (int *,TYPE_3__*,char*) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static void
fz_draw_begin_group(fz_context *ctx, fz_device *devp, fz_rect area, fz_colorspace *cs, int isolated, int knockout, int blendmode, float alpha)
{
 fz_draw_device *dev = (fz_draw_device*)devp;
 fz_irect bbox;
 fz_pixmap *dest;
 fz_draw_state *state = &dev->stack[dev->top];
 fz_colorspace *model = state->dest->colorspace;
 fz_rect trect;

 if (dev->top == 0 && dev->resolve_spots)
  state = push_group_for_separations(ctx, dev, fz_default_color_params , dev->default_cs);

 if (cs != ((void*)0))
  model = fz_default_colorspace(ctx, dev->default_cs, cs);

 if (state->blendmode & FZ_BLEND_KNOCKOUT)
  fz_knockout_begin(ctx, dev);

 state = push_stack(ctx, dev, "group");

 trect = fz_transform_rect(area, dev->transform);
 bbox = fz_intersect_irect(fz_irect_from_rect(trect), state->scissor);


 knockout = 0;
 isolated = 1;


 state[1].dest = dest = fz_new_pixmap_with_bbox(ctx, model, bbox, state[0].dest->seps, state[0].dest->alpha || isolated);

 if (isolated)
 {
  fz_clear_pixmap(ctx, dest);
  state[1].group_alpha = ((void*)0);
 }
 else
 {
  fz_copy_pixmap_rect(ctx, dest, state[0].dest, bbox, dev->default_cs);
  state[1].group_alpha = fz_new_pixmap_with_bbox(ctx, ((void*)0), bbox, ((void*)0), 1);
  fz_clear_pixmap(ctx, state[1].group_alpha);
 }


 state[1].alpha = alpha;
 state[1].scissor = bbox;
 state[1].blendmode = blendmode | (isolated ? FZ_BLEND_ISOLATED : 0) | (knockout ? FZ_BLEND_KNOCKOUT : 0);
}
