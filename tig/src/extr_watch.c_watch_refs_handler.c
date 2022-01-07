
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watch_handler {int dummy; } ;
typedef enum watch_trigger { ____Placeholder_watch_trigger } watch_trigger ;
typedef enum watch_event { ____Placeholder_watch_event } watch_event ;


 int WATCH_EVENT_AFTER_COMMAND ;
 int WATCH_NONE ;
 int load_refs (int) ;

__attribute__((used)) static enum watch_trigger
watch_refs_handler(struct watch_handler *handler, enum watch_event event,
     enum watch_trigger check)
{
 if (event == WATCH_EVENT_AFTER_COMMAND)
  load_refs(1);

 return WATCH_NONE;
}
