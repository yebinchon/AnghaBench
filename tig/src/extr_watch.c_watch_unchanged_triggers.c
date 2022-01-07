
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watch {int changed; int triggers; } ;
typedef enum watch_trigger { ____Placeholder_watch_trigger } watch_trigger ;


 int watch_trigger_unmask (int ,int ) ;

__attribute__((used)) static inline enum watch_trigger
watch_unchanged_triggers(struct watch *watch)
{
 return watch_trigger_unmask(watch->triggers, watch->changed);
}
