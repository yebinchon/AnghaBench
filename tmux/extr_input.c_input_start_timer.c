
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; } ;
struct input_ctx {int timer; } ;


 int event_add (int *,struct timeval*) ;
 int event_del (int *) ;

__attribute__((used)) static void
input_start_timer(struct input_ctx *ictx)
{
 struct timeval tv = { .tv_usec = 100000 };

 event_del(&ictx->timer);
 event_add(&ictx->timer, &tv);
}
