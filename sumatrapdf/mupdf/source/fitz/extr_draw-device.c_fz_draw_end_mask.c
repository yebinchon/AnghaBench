
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int alpha; int * seps; int * colorspace; } ;
typedef TYPE_1__ fz_pixmap ;
typedef int fz_irect ;
struct TYPE_15__ {int scissor; TYPE_1__* group_alpha; TYPE_1__* shape; int blendmode; TYPE_1__* dest; TYPE_1__* mask; } ;
typedef TYPE_2__ fz_draw_state ;
struct TYPE_16__ {scalar_t__ top; int default_cs; } ;
typedef TYPE_3__ fz_draw_device ;
typedef int fz_device ;
typedef int fz_context ;


 int FZ_BLEND_ISOLATED ;
 int FZ_ERROR_GENERIC ;
 TYPE_2__* convert_stack (int *,TYPE_3__*,char*) ;
 int dump_spaces (scalar_t__,char*) ;
 TYPE_1__* fz_alpha_from_gray (int *,TYPE_1__*) ;
 int fz_clear_pixmap (int *,TYPE_1__*) ;
 int fz_copy_pixmap_rect (int *,TYPE_1__*,TYPE_1__*,int ,int ) ;
 int fz_drop_pixmap (int *,TYPE_1__*) ;
 int fz_dump_blend (int *,char*,TYPE_1__*) ;
 void* fz_new_pixmap_with_bbox (int *,int *,int ,int *,int) ;
 int fz_pixmap_bbox (int *,TYPE_1__*) ;
 int fz_throw (int *,int ,char*) ;
 int printf (char*) ;

__attribute__((used)) static void
fz_draw_end_mask(fz_context *ctx, fz_device *devp)
{
 fz_draw_device *dev = (fz_draw_device*)devp;
 fz_pixmap *temp, *dest;
 fz_irect bbox;
 fz_draw_state *state;

 if (dev->top == 0)
  fz_throw(ctx, FZ_ERROR_GENERIC, "unexpected end mask");

 state = convert_stack(ctx, dev, "mask");
 {

  temp = fz_alpha_from_gray(ctx, state[1].dest);
  if (state[1].mask != state[0].mask)
   fz_drop_pixmap(ctx, state[1].mask);
  state[1].mask = temp;
  if (state[1].dest != state[0].dest)
   fz_drop_pixmap(ctx, state[1].dest);
  state[1].dest = ((void*)0);
  if (state[1].shape != state[0].shape)
   fz_drop_pixmap(ctx, state[1].shape);
  state[1].shape = ((void*)0);
  if (state[1].group_alpha != state[0].group_alpha)
   fz_drop_pixmap(ctx, state[1].group_alpha);
  state[1].group_alpha = ((void*)0);







  bbox = fz_pixmap_bbox(ctx, temp);
  dest = fz_new_pixmap_with_bbox(ctx, state->dest->colorspace, bbox, state->dest->seps, state->dest->alpha);
  fz_copy_pixmap_rect(ctx, dest, state->dest, bbox, dev->default_cs);


  state[1].dest = dest;
  state[1].blendmode |= FZ_BLEND_ISOLATED;


  if (state[0].shape)
  {
   state[1].shape = fz_new_pixmap_with_bbox(ctx, ((void*)0), bbox, ((void*)0), 1);
   fz_clear_pixmap(ctx, state[1].shape);
  }
  if (state[0].group_alpha)
  {
   state[1].group_alpha = fz_new_pixmap_with_bbox(ctx, ((void*)0), bbox, ((void*)0), 1);
   fz_clear_pixmap(ctx, state[1].group_alpha);
  }
  state[1].scissor = bbox;
 }
}
