
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_sec; int tv_usec; } ;
struct session {int flags; int name; int last_activity_time; int activity_time; int options; } ;


 int SESSION_PASTING ;
 int log_debug (char*,int ,...) ;
 int options_get_number (int ,char*) ;
 int timersub (int *,int *,struct timeval*) ;

__attribute__((used)) static int
server_client_assume_paste(struct session *s)
{
 struct timeval tv;
 int t;

 if ((t = options_get_number(s->options, "assume-paste-time")) == 0)
  return (0);

 timersub(&s->activity_time, &s->last_activity_time, &tv);
 if (tv.tv_sec == 0 && tv.tv_usec < t * 1000) {
  log_debug("session %s pasting (flag %d)", s->name,
      !!(s->flags & SESSION_PASTING));
  if (s->flags & SESSION_PASTING)
   return (1);
  s->flags |= SESSION_PASTING;
  return (0);
 }
 log_debug("session %s not pasting", s->name);
 s->flags &= ~SESSION_PASTING;
 return (0);
}
