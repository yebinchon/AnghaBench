
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; } ;
struct TYPE_4__ {int trigger_name; int table; int schema; } ;
typedef int Hypertable ;
typedef TYPE_1__ EventTriggerDropTrigger ;
typedef TYPE_2__ EventTriggerDropObject ;


 int Assert (int) ;
 scalar_t__ EVENT_TRIGGER_DROP_TRIGGER ;
 int ts_hypertable_drop_trigger (int *,int ) ;
 int * ts_hypertable_get_by_name (int ,int ) ;

__attribute__((used)) static void
process_drop_trigger(EventTriggerDropObject *obj)
{
 EventTriggerDropTrigger *trigger_event;
 Hypertable *ht;

 Assert(obj->type == EVENT_TRIGGER_DROP_TRIGGER);
 trigger_event = (EventTriggerDropTrigger *) obj;


 ht = ts_hypertable_get_by_name(trigger_event->schema, trigger_event->table);

 if (ht != ((void*)0))
 {

  ts_hypertable_drop_trigger(ht, trigger_event->trigger_name);
 }
}
