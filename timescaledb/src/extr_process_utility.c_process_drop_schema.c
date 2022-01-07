
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; } ;
struct TYPE_4__ {int schema; } ;
typedef TYPE_1__ EventTriggerDropSchema ;
typedef TYPE_2__ EventTriggerDropObject ;


 int Assert (int) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 scalar_t__ EVENT_TRIGGER_DROP_SCHEMA ;
 int EXTENSION_NAME ;
 int INTERNAL_SCHEMA_NAME ;
 int NOTICE ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,int ,...) ;
 scalar_t__ strcmp (int ,int ) ;
 int ts_hypertable_reset_associated_schema_name (int ) ;

__attribute__((used)) static void
process_drop_schema(EventTriggerDropObject *obj)
{
 EventTriggerDropSchema *schema;
 int count;

 Assert(obj->type == EVENT_TRIGGER_DROP_SCHEMA);
 schema = (EventTriggerDropSchema *) obj;

 if (strcmp(schema->schema, INTERNAL_SCHEMA_NAME) == 0)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("cannot drop the internal schema for extension \"%s\"", EXTENSION_NAME),
     errhint("Use DROP EXTENSION to remove the extension and the schema.")));






 count = ts_hypertable_reset_associated_schema_name(schema->schema);

 if (count > 0)
  ereport(NOTICE,
    (errmsg("the chunk storage schema changed to \"%s\" for %d hypertable%c",
      INTERNAL_SCHEMA_NAME,
      count,
      (count > 1) ? 's' : '\0')));
}
