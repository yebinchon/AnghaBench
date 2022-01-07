
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; } ;
struct TYPE_4__ {int table_name; int schema; } ;
typedef TYPE_1__ EventTriggerDropTable ;
typedef TYPE_2__ EventTriggerDropObject ;


 int Assert (int) ;
 int DROP_RESTRICT ;
 scalar_t__ EVENT_TRIGGER_DROP_TABLE ;
 int ts_chunk_delete_by_name (int ,int ,int ) ;
 int ts_hypertable_delete_by_name (int ,int ) ;

__attribute__((used)) static void
process_drop_table(EventTriggerDropObject *obj)
{
 EventTriggerDropTable *table;

 Assert(obj->type == EVENT_TRIGGER_DROP_TABLE);
 table = (EventTriggerDropTable *) obj;

 ts_hypertable_delete_by_name(table->schema, table->table_name);
 ts_chunk_delete_by_name(table->schema, table->table_name, DROP_RESTRICT);
}
