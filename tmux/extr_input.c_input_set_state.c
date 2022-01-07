
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct window_pane {struct input_ctx* ictx; } ;
struct input_transition {TYPE_1__* state; } ;
struct input_ctx {TYPE_1__* state; } ;
struct TYPE_2__ {int (* enter ) (struct input_ctx*) ;int (* exit ) (struct input_ctx*) ;} ;


 int stub1 (struct input_ctx*) ;
 int stub2 (struct input_ctx*) ;

__attribute__((used)) static void
input_set_state(struct window_pane *wp, const struct input_transition *itr)
{
 struct input_ctx *ictx = wp->ictx;

 if (ictx->state->exit != ((void*)0))
  ictx->state->exit(ictx);
 ictx->state = itr->state;
 if (ictx->state->enter != ((void*)0))
  ictx->state->enter(ictx);
}
