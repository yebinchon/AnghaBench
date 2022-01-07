
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window {int activity_time; } ;


 int WINDOW_ACTIVITY ;
 int alerts_queue (struct window*,int ) ;
 int gettimeofday (int *,int *) ;

void
window_update_activity(struct window *w)
{
 gettimeofday(&w->activity_time, ((void*)0));
 alerts_queue(w, WINDOW_ACTIVITY);
}
