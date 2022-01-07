
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;


 int WATCH_EVENT_PERIODIC ;
 scalar_t__ time (int *) ;
 int watch_update (int ) ;
 scalar_t__ watches ;

int
watch_periodic(int interval)
{
 static time_t last_update;
 int delay = -1;

 if (watches && interval > 0) {
  time_t now = time(((void*)0));

  if (!last_update || last_update + interval <= now) {
   watch_update(WATCH_EVENT_PERIODIC);
   last_update = now;
  }

  delay = (now - last_update + interval) * 1000;
 }

 return delay;
}
