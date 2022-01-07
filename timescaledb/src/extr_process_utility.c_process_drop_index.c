
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int index_name; int schema; } ;
struct TYPE_4__ {scalar_t__ type; } ;
typedef TYPE_1__ EventTriggerDropObject ;
typedef TYPE_2__ EventTriggerDropIndex ;


 int Assert (int) ;
 scalar_t__ EVENT_TRIGGER_DROP_INDEX ;
 int ts_chunk_index_delete_by_name (int ,int ,int) ;

__attribute__((used)) static void
process_drop_index(EventTriggerDropObject *obj)
{
 EventTriggerDropIndex *index;

 Assert(obj->type == EVENT_TRIGGER_DROP_INDEX);
 index = (EventTriggerDropIndex *) obj;

 ts_chunk_index_delete_by_name(index->schema, index->index_name, 1);
}
