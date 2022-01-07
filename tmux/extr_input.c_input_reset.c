
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_pane {int base; int modes; struct input_ctx* ictx; } ;
struct screen_write_ctx {int dummy; } ;
struct input_ctx {int last; scalar_t__ flags; int * state; struct screen_write_ctx ctx; } ;


 scalar_t__ TAILQ_EMPTY (int *) ;
 int input_clear (struct input_ctx*) ;
 int input_reset_cell (struct input_ctx*) ;
 int input_state_ground ;
 int screen_write_reset (struct screen_write_ctx*) ;
 int screen_write_start (struct screen_write_ctx*,struct window_pane*,int *) ;
 int screen_write_stop (struct screen_write_ctx*) ;

void
input_reset(struct window_pane *wp, int clear)
{
 struct input_ctx *ictx = wp->ictx;
 struct screen_write_ctx *sctx = &ictx->ctx;

 input_reset_cell(ictx);

 if (clear) {
  if (TAILQ_EMPTY(&wp->modes))
   screen_write_start(sctx, wp, &wp->base);
  else
   screen_write_start(sctx, ((void*)0), &wp->base);
  screen_write_reset(sctx);
  screen_write_stop(sctx);
 }

 input_clear(ictx);

 ictx->last = -1;

 ictx->state = &input_state_ground;
 ictx->flags = 0;
}
