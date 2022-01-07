
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct session {scalar_t__ attached; int lock_timer; int options; struct timeval activity_time; int name; int id; struct timeval last_activity_time; } ;


 int evtimer_add (int *,struct timeval*) ;
 int evtimer_del (int *) ;
 scalar_t__ evtimer_initialized (int *) ;
 int evtimer_set (int *,int ,struct session*) ;
 int gettimeofday (struct timeval*,int *) ;
 int log_debug (char*,int ,int ,long long,int,long long,int) ;
 int memcpy (struct timeval*,struct timeval*,int) ;
 scalar_t__ options_get_number (int ,char*) ;
 int session_lock_timer ;
 int timerclear (struct timeval*) ;

void
session_update_activity(struct session *s, struct timeval *from)
{
 struct timeval *last = &s->last_activity_time;
 struct timeval tv;

 memcpy(last, &s->activity_time, sizeof *last);
 if (from == ((void*)0))
  gettimeofday(&s->activity_time, ((void*)0));
 else
  memcpy(&s->activity_time, from, sizeof s->activity_time);

 log_debug("session $%u %s activity %lld.%06d (last %lld.%06d)", s->id,
     s->name, (long long)s->activity_time.tv_sec,
     (int)s->activity_time.tv_usec, (long long)last->tv_sec,
     (int)last->tv_usec);

 if (evtimer_initialized(&s->lock_timer))
  evtimer_del(&s->lock_timer);
 else
  evtimer_set(&s->lock_timer, session_lock_timer, s);

 if (s->attached != 0) {
  timerclear(&tv);
  tv.tv_sec = options_get_number(s->options, "lock-after-time");
  if (tv.tv_sec != 0)
   evtimer_add(&s->lock_timer, &tv);
 }
}
