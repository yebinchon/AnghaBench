
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_4__ {int target_size_bytes; int func_name; int func_schema; int func; } ;
typedef int Relation ;
typedef int Oid ;
typedef int NameData ;
typedef TYPE_1__ ChunkSizingInfo ;


 int AccessExclusiveLock ;
 int ERRCODE_TS_HYPERTABLE_EXISTS ;
 int ERROR ;
 int GetUserId () ;
 int INTERNAL_SCHEMA_NAME ;
 int NoLock ;
 scalar_t__ OidIsValid (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int get_namespace_name (int ) ;
 int get_rel_name (int ) ;
 int get_rel_namespace (int ) ;
 int get_rel_tablespace (int ) ;
 int get_tablespace_name (int ) ;
 int heap_close (int ,int ) ;
 int heap_open (int ,int ) ;
 int hypertable_insert (int ,int *,int *,int *,int *,int *,int *,int ,int ,int) ;
 int insert_blocker_trigger_add (int ) ;
 int namestrcpy (int *,int ) ;
 int ts_chunk_sizing_func_validate (int ,TYPE_1__*) ;
 TYPE_1__* ts_chunk_sizing_info_get_default_disabled (int ) ;
 int ts_hypertable_permissions_check (int ,int ) ;
 scalar_t__ ts_is_hypertable (int ) ;
 int ts_tablespace_attach_internal (int *,int ,int) ;

bool
ts_hypertable_create_compressed(Oid table_relid, int32 hypertable_id)
{
 Oid user_oid = GetUserId();
 Oid tspc_oid = get_rel_tablespace(table_relid);
 NameData schema_name, table_name, associated_schema_name;
 ChunkSizingInfo *chunk_sizing_info;
 Relation rel;

 rel = heap_open(table_relid, AccessExclusiveLock);




 ts_hypertable_permissions_check(table_relid, user_oid);
 if (ts_is_hypertable(table_relid))
 {
  ereport(ERROR,
    (errcode(ERRCODE_TS_HYPERTABLE_EXISTS),
     errmsg("table \"%s\" is already a hypertable", get_rel_name(table_relid))));
  heap_close(rel, AccessExclusiveLock);
 }

 namestrcpy(&schema_name, get_namespace_name(get_rel_namespace(table_relid)));
 namestrcpy(&table_name, get_rel_name(table_relid));




 chunk_sizing_info = ts_chunk_sizing_info_get_default_disabled(table_relid);
 ts_chunk_sizing_func_validate(chunk_sizing_info->func, chunk_sizing_info);


 namestrcpy(&schema_name, get_namespace_name(get_rel_namespace(table_relid)));
 namestrcpy(&table_name, get_rel_name(table_relid));
 namestrcpy(&associated_schema_name, INTERNAL_SCHEMA_NAME);


 hypertable_insert(hypertable_id,
       &schema_name,
       &table_name,
       &associated_schema_name,
       ((void*)0),
       &chunk_sizing_info->func_schema,
       &chunk_sizing_info->func_name,
       chunk_sizing_info->target_size_bytes,
       0 ,
       1);




 if (OidIsValid(tspc_oid))
 {
  NameData tspc_name;

  namestrcpy(&tspc_name, get_tablespace_name(tspc_oid));
  ts_tablespace_attach_internal(&tspc_name, table_relid, 0);
 }

 insert_blocker_trigger_add(table_relid);

 heap_close(rel, NoLock);
 return 1;
}
