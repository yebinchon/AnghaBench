
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct window {int alerts_timer; int id; int options; int flags; } ;
struct timeval {scalar_t__ tv_sec; } ;


 int WINDOW_SILENCE ;
 int alerts_timer ;
 int event_add (int *,struct timeval*) ;
 int event_del (int *) ;
 int event_initialized (int *) ;
 int evtimer_set (int *,int ,struct window*) ;
 int log_debug (char*,int ,int ) ;
 scalar_t__ options_get_number (int ,char*) ;
 int timerclear (struct timeval*) ;

__attribute__((used)) static void
alerts_reset(struct window *w)
{
 struct timeval tv;

 if (!event_initialized(&w->alerts_timer))
  evtimer_set(&w->alerts_timer, alerts_timer, w);

 w->flags &= ~WINDOW_SILENCE;
 event_del(&w->alerts_timer);

 timerclear(&tv);
 tv.tv_sec = options_get_number(w->options, "monitor-silence");

 log_debug("@%u alerts timer reset %u", w->id, (u_int)tv.tv_sec);
 if (tv.tv_sec != 0)
  event_add(&w->alerts_timer, &tv);
}
