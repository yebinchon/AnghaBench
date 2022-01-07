
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct window_pane {struct input_ctx* ictx; } ;
struct input_ctx {size_t param_list_len; int since_ground; struct input_ctx* input_buf; int timer; TYPE_1__* param_list; } ;
struct TYPE_2__ {scalar_t__ type; struct input_ctx* str; } ;


 scalar_t__ INPUT_STRING ;
 int evbuffer_free (int ) ;
 int event_del (int *) ;
 int free (struct input_ctx*) ;

void
input_free(struct window_pane *wp)
{
 struct input_ctx *ictx = wp->ictx;
 u_int i;

 for (i = 0; i < ictx->param_list_len; i++) {
  if (ictx->param_list[i].type == INPUT_STRING)
   free(ictx->param_list[i].str);
 }

 event_del(&ictx->timer);

 free(ictx->input_buf);
 evbuffer_free(ictx->since_ground);

 free(ictx);
 wp->ictx = ((void*)0);
}
