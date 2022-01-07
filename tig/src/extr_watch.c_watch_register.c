
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watch {int triggers; void* state; void* changed; struct watch* next; } ;
typedef enum watch_trigger { ____Placeholder_watch_trigger } watch_trigger ;


 void* WATCH_NONE ;
 int watch_unregister (struct watch*) ;
 struct watch* watches ;

void
watch_register(struct watch *watch, enum watch_trigger triggers)
{
 watch_unregister(watch);

 watch->next = watches;
 watches = watch;

 watch->triggers = triggers;
 watch->changed = WATCH_NONE;
 watch->state = WATCH_NONE;
}
