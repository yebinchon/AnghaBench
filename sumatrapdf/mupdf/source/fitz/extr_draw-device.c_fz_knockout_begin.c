
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int fz_irect ;
struct TYPE_12__ {int blendmode; int scissor; TYPE_5__* group_alpha; TYPE_5__* shape; TYPE_5__* dest; } ;
typedef TYPE_1__ fz_draw_state ;
struct TYPE_13__ {size_t top; int default_cs; TYPE_1__* stack; } ;
typedef TYPE_2__ fz_draw_device ;
typedef int fz_context ;
struct TYPE_14__ {int alpha; int * seps; int * colorspace; } ;


 int FZ_BLEND_ISOLATED ;
 int FZ_BLEND_KNOCKOUT ;
 int FZ_BLEND_MODEMASK ;
 int dump_spaces (int,char*) ;
 int fz_clear_pixmap (int *,TYPE_5__*) ;
 int fz_copy_pixmap_rect (int *,TYPE_5__*,TYPE_5__*,int ,int ) ;
 int fz_dump_blend (int *,char*,TYPE_5__*) ;
 int fz_intersect_irect (int ,int ) ;
 void* fz_new_pixmap_with_bbox (int *,int *,int ,int *,int) ;
 int fz_pixmap_bbox (int *,TYPE_5__*) ;
 int printf (char*) ;
 TYPE_1__* push_stack (int *,TYPE_2__*,char*) ;

__attribute__((used)) static fz_draw_state *
fz_knockout_begin(fz_context *ctx, fz_draw_device *dev)
{
 fz_irect bbox, ga_bbox;
 fz_draw_state *state = &dev->stack[dev->top];
 int isolated = state->blendmode & FZ_BLEND_ISOLATED;

 if ((state->blendmode & FZ_BLEND_KNOCKOUT) == 0)
  return state;

 state = push_stack(ctx, dev, "knockout");

 bbox = fz_pixmap_bbox(ctx, state->dest);
 bbox = fz_intersect_irect(bbox, state->scissor);
 state[1].dest = fz_new_pixmap_with_bbox(ctx, state->dest->colorspace, bbox, state->dest->seps, state->dest->alpha);
 if (state[0].group_alpha)
 {
  ga_bbox = fz_pixmap_bbox(ctx, state->group_alpha);
  ga_bbox = fz_intersect_irect(ga_bbox, state->scissor);
  state[1].group_alpha = fz_new_pixmap_with_bbox(ctx, state->group_alpha->colorspace, ga_bbox, state->group_alpha->seps, state->group_alpha->alpha);
 }

 if (isolated)
 {
  fz_clear_pixmap(ctx, state[1].dest);
  if (state[1].group_alpha)
   fz_clear_pixmap(ctx, state[1].group_alpha);
 }
 else
 {

  int i = dev->top-1;
  fz_draw_state *prev = state;
  while (i > 0)
  {
   prev = &dev->stack[--i];
   if (prev->dest != state->dest)
    break;
  }
  if (prev->dest)
  {
   fz_copy_pixmap_rect(ctx, state[1].dest, prev->dest, bbox, dev->default_cs);
   if (state[1].group_alpha)
   {
    if (prev->group_alpha)
     fz_copy_pixmap_rect(ctx, state[1].group_alpha, prev->group_alpha, ga_bbox, dev->default_cs);
    else
     fz_clear_pixmap(ctx, state[1].group_alpha);
   }
  }
  else
  {
   fz_clear_pixmap(ctx, state[1].dest);
   if (state[1].group_alpha)
    fz_clear_pixmap(ctx, state[1].group_alpha);
  }
 }


 state[1].shape = fz_new_pixmap_with_bbox(ctx, ((void*)0), bbox, ((void*)0), 1);
 fz_clear_pixmap(ctx, state[1].shape);
 state[1].scissor = bbox;
 state[1].blendmode &= ~(FZ_BLEND_MODEMASK | FZ_BLEND_ISOLATED);

 return &state[1];
}
