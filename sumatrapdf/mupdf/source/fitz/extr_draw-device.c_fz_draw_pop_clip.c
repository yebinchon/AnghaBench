
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * group_alpha; int * shape; int * dest; int * mask; } ;
typedef TYPE_1__ fz_draw_state ;
struct TYPE_6__ {scalar_t__ top; } ;
typedef TYPE_2__ fz_draw_device ;
typedef int fz_device ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int dump_spaces (scalar_t__,char*) ;
 int fz_drop_pixmap (int *,int *) ;
 int fz_dump_blend (int *,char*,int *) ;
 int fz_paint_pixmap_with_mask (int *,int *,int *) ;
 int fz_throw (int *,int ,char*) ;
 TYPE_1__* pop_stack (int *,TYPE_2__*,char*) ;
 int printf (char*) ;

__attribute__((used)) static void
fz_draw_pop_clip(fz_context *ctx, fz_device *devp)
{
 fz_draw_device *dev = (fz_draw_device*)devp;
 fz_draw_state *state;

 if (dev->top == 0)
  fz_throw(ctx, FZ_ERROR_GENERIC, "unexpected pop clip");

 state = pop_stack(ctx, dev, "clip");




 if (state[1].mask)
 {
  fz_paint_pixmap_with_mask(state[0].dest, state[1].dest, state[1].mask);
  if (state[0].shape != state[1].shape)
  {
   fz_paint_pixmap_with_mask(state[0].shape, state[1].shape, state[1].mask);
   fz_drop_pixmap(ctx, state[1].shape);
   state[1].shape = ((void*)0);
  }
  if (state[0].group_alpha != state[1].group_alpha)
  {
   fz_paint_pixmap_with_mask(state[0].group_alpha, state[1].group_alpha, state[1].mask);
   fz_drop_pixmap(ctx, state[1].group_alpha);
   state[1].group_alpha = ((void*)0);
  }
  fz_drop_pixmap(ctx, state[1].mask);
  state[1].mask = ((void*)0);
  fz_drop_pixmap(ctx, state[1].dest);
  state[1].dest = ((void*)0);
 }
 else
 {



 }
}
