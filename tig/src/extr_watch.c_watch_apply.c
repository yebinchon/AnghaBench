
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watch {int dummy; } ;
typedef enum watch_trigger { ____Placeholder_watch_trigger } watch_trigger ;


 int WATCH_EVENT_LOAD ;
 int watch_apply_changes (struct watch*,int ,int) ;

void
watch_apply(struct watch *source, enum watch_trigger changed)
{
 watch_apply_changes(source, WATCH_EVENT_LOAD, changed);
}
