
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_ctx {scalar_t__ input_space; int input_buf; int since_ground; int timer; } ;


 int EVBUFFER_LENGTH (int ) ;
 scalar_t__ INPUT_BUF_START ;
 int evbuffer_drain (int ,int ) ;
 int event_del (int *) ;
 int xrealloc (int ,scalar_t__) ;

__attribute__((used)) static void
input_ground(struct input_ctx *ictx)
{
 event_del(&ictx->timer);
 evbuffer_drain(ictx->since_ground, EVBUFFER_LENGTH(ictx->since_ground));

 if (ictx->input_space > INPUT_BUF_START) {
  ictx->input_space = INPUT_BUF_START;
  ictx->input_buf = xrealloc(ictx->input_buf, INPUT_BUF_START);
 }
}
