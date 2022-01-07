
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int dummy; } ;


 struct event_base* event_init () ;
 int setenv (char*,char*,int) ;
 int unsetenv (char*) ;

struct event_base *
osdep_event_init(void)
{
 struct event_base *base;


 setenv("EVENT_NOEPOLL", "1", 1);

 base = event_init();
 unsetenv("EVENT_NOEPOLL");
 return (base);
}
