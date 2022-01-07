
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watch {struct watch* next; } ;
typedef enum watch_trigger { ____Placeholder_watch_trigger } watch_trigger ;
typedef enum watch_event { ____Placeholder_watch_event } watch_event ;


 int WATCH_NONE ;
 int watch_unchanged_triggers (struct watch*) ;
 int watch_update_event (int,int,int) ;
 struct watch* watches ;

enum watch_trigger
watch_update(enum watch_event event)
{
 enum watch_trigger trigger = WATCH_NONE;
 struct watch *watch;



 for (watch = watches; watch; watch = watch->next)
  trigger |= watch_unchanged_triggers(watch);

 return watch_update_event(event, trigger, WATCH_NONE);
}
