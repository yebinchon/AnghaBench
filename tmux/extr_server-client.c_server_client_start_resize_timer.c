
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_pane {int resize_timer; } ;
struct timeval {int tv_usec; } ;


 int evtimer_add (int *,struct timeval*) ;
 int evtimer_pending (int *,int *) ;

__attribute__((used)) static void
server_client_start_resize_timer(struct window_pane *wp)
{
 struct timeval tv = { .tv_usec = 250000 };

 if (!evtimer_pending(&wp->resize_timer, ((void*)0)))
  evtimer_add(&wp->resize_timer, &tv);
}
