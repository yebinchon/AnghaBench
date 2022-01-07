
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int tgoid; int tgoldtable; int tgnewtable; } ;
typedef TYPE_2__ Trigger ;
struct TYPE_6__ {int table_name; int schema_name; } ;
struct TYPE_8__ {TYPE_1__ fd; } ;
typedef TYPE_3__ Chunk ;


 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int NameStr (int ) ;
 scalar_t__ TRIGGER_USES_TRANSITION_TABLE (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ trigger_is_chunk_trigger (TYPE_2__*) ;
 int ts_trigger_create_on_chunk (int ,int ,int ) ;

__attribute__((used)) static bool
create_trigger_handler(Trigger *trigger, void *arg)
{
 Chunk *chunk = arg;
 if (trigger_is_chunk_trigger(trigger))
  ts_trigger_create_on_chunk(trigger->tgoid,
           NameStr(chunk->fd.schema_name),
           NameStr(chunk->fd.table_name));

 return 1;
}
