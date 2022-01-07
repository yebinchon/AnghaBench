
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_19__ {int num_tablespaces; TYPE_2__* tablespaces; } ;
typedef TYPE_4__ Tablespaces ;
struct TYPE_21__ {int name; } ;
struct TYPE_18__ {int compressed_hypertable_id; int id; } ;
struct TYPE_20__ {int main_table_relid; TYPE_3__ fd; } ;
struct TYPE_16__ {int tablespace_name; } ;
struct TYPE_17__ {TYPE_1__ fd; int tablespace_oid; } ;
typedef int NameData ;
typedef TYPE_5__ Hypertable ;
typedef TYPE_6__ AlterTableCmd ;


 int AlterTableInternal (int ,int ,int) ;
 int Assert (int ) ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 int NameStr (int ) ;
 scalar_t__ TS_HYPERTABLE_HAS_COMPRESSION (TYPE_5__*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,int ) ;
 int foreach_chunk (TYPE_5__*,int ,TYPE_6__*) ;
 int get_rel_name (int ) ;
 int list_make1 (TYPE_6__*) ;
 int namestrcpy (int *,int ) ;
 int process_altertable_chunk ;
 TYPE_5__* ts_hypertable_get_by_id (int ) ;
 int ts_hypertable_has_tablespace (TYPE_5__*,int ) ;
 int ts_tablespace_attach_internal (int *,int ,int) ;
 int ts_tablespace_delete (int ,int ) ;
 TYPE_4__* ts_tablespace_scan (int ) ;

__attribute__((used)) static void
process_altertable_set_tablespace_end(Hypertable *ht, AlterTableCmd *cmd)
{
 NameData tspc_name;
 Tablespaces *tspcs;

 namestrcpy(&tspc_name, cmd->name);

 tspcs = ts_tablespace_scan(ht->fd.id);

 if (tspcs->num_tablespaces > 1)
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("cannot set new tablespace when multiple tablespaces are attached to "
      "hypertable \"%s\"",
      get_rel_name(ht->main_table_relid)),
     errhint("Detach tablespaces before altering the hypertable.")));

 if (tspcs->num_tablespaces == 1)
 {
  Assert(ts_hypertable_has_tablespace(ht, tspcs->tablespaces[0].tablespace_oid));
  ts_tablespace_delete(ht->fd.id, NameStr(tspcs->tablespaces[0].fd.tablespace_name));
 }

 ts_tablespace_attach_internal(&tspc_name, ht->main_table_relid, 1);
 foreach_chunk(ht, process_altertable_chunk, cmd);
 if (TS_HYPERTABLE_HAS_COMPRESSION(ht))
 {
  Hypertable *compressed_hypertable =
   ts_hypertable_get_by_id(ht->fd.compressed_hypertable_id);
  AlterTableInternal(compressed_hypertable->main_table_relid, list_make1(cmd), 0);
  process_altertable_set_tablespace_end(compressed_hypertable, cmd);
 }
}
