
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_ctx {char* interm_buf; char* param_buf; char* input_buf; int flags; int input_end; scalar_t__ input_len; scalar_t__ param_len; scalar_t__ interm_len; int timer; } ;


 int INPUT_DISCARD ;
 int INPUT_END_ST ;
 int event_del (int *) ;

__attribute__((used)) static void
input_clear(struct input_ctx *ictx)
{
 event_del(&ictx->timer);

 *ictx->interm_buf = '\0';
 ictx->interm_len = 0;

 *ictx->param_buf = '\0';
 ictx->param_len = 0;

 *ictx->input_buf = '\0';
 ictx->input_len = 0;

 ictx->input_end = INPUT_END_ST;

 ictx->flags &= ~INPUT_DISCARD;
}
