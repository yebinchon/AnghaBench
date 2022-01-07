
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_pane {struct input_ctx* ictx; } ;
struct input_ctx {int timer; int * since_ground; int input_buf; int input_space; } ;


 int INPUT_BUF_START ;
 int * evbuffer_new () ;
 int evtimer_set (int *,int ,struct input_ctx*) ;
 int fatalx (char*) ;
 int input_reset (struct window_pane*,int ) ;
 int input_timer_callback ;
 struct input_ctx* xcalloc (int,int) ;
 int xmalloc (int ) ;

void
input_init(struct window_pane *wp)
{
 struct input_ctx *ictx;

 ictx = wp->ictx = xcalloc(1, sizeof *ictx);

 ictx->input_space = INPUT_BUF_START;
 ictx->input_buf = xmalloc(INPUT_BUF_START);

 ictx->since_ground = evbuffer_new();
 if (ictx->since_ground == ((void*)0))
  fatalx("out of memory");

 evtimer_set(&ictx->timer, input_timer_callback, ictx);

 input_reset(wp, 0);
}
