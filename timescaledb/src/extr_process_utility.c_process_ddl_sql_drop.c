
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int type; } ;
typedef int EventTriggerDropView ;
typedef TYPE_1__ EventTriggerDropObject ;
 int process_drop_index (TYPE_1__*) ;
 int process_drop_schema (TYPE_1__*) ;
 int process_drop_table (TYPE_1__*) ;
 int process_drop_table_constraint (TYPE_1__*) ;
 int process_drop_trigger (TYPE_1__*) ;
 int process_drop_view (int *) ;

__attribute__((used)) static void
process_ddl_sql_drop(EventTriggerDropObject *obj)
{
 switch (obj->type)
 {
  case 130:
   process_drop_table_constraint(obj);
   break;
  case 133:
   process_drop_index(obj);
   break;
  case 131:
   process_drop_table(obj);
   break;
  case 132:
   process_drop_schema(obj);
   break;
  case 129:
   process_drop_trigger(obj);
   break;
  case 128:
   process_drop_view((EventTriggerDropView *) obj);
   break;
 }
}
