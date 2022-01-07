
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32 ;
typedef int int32 ;
struct TYPE_12__ {scalar_t__ target_size_bytes; int func_name; int func_schema; int func; } ;
struct TYPE_11__ {int adaptive_chunking; int * ht; } ;
typedef int Relation ;
typedef int Oid ;
typedef int NameData ;
typedef int * Name ;
typedef int Hypertable ;
typedef TYPE_1__ DimensionInfo ;
typedef TYPE_2__ ChunkSizingInfo ;
typedef int Cache ;


 int AccessExclusiveLock ;
 int AccessShareLock ;
 int Assert (int ) ;
 scalar_t__ DIMENSION_INFO_IS_SET (TYPE_1__*) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERRCODE_TS_HYPERTABLE_EXISTS ;
 int ERRCODE_WARNING ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 int GetUserId () ;
 int HYPERTABLE_CREATE_DISABLE_DEFAULT_INDEXES ;
 int HYPERTABLE_CREATE_IF_NOT_EXISTS ;
 int HYPERTABLE_CREATE_MIGRATE_DATA ;
 int INTERNAL_SCHEMA_NAME ;
 int NOTICE ;
 int NameStr (int ) ;
 int NoLock ;
 scalar_t__ OidIsValid (int ) ;


 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,...) ;
 int errhint (char*) ;
 int errmsg (char*,...) ;
 int get_namespace_name (int ) ;
 int get_rel_name (int ) ;
 int get_rel_namespace (int ) ;
 int get_rel_relkind (int ) ;
 int get_rel_tablespace (int ) ;
 int get_tablespace_name (int ) ;
 int heap_close (int ,int ) ;
 int heap_open (int ,int ) ;
 int hypertable_check_associated_schema_permissions (int ,int ) ;
 int hypertable_create_schema (int ) ;
 int hypertable_insert (int ,int *,int *,int *,int *,int *,int *,scalar_t__,int,int) ;
 int hypertable_validate_constraints (int ) ;
 int insert_blocker_trigger_add (int ) ;
 scalar_t__ is_inheritance_table (int ) ;
 int namestrcpy (int *,int ) ;
 int relation_has_tuples (int ) ;
 scalar_t__ table_has_replica_identity (int ) ;
 scalar_t__ table_has_rules (int ) ;
 int table_is_logged (int ) ;
 int timescaledb_move_from_table_to_chunks (int *,int ) ;
 int ts_cache_release (int *) ;
 int ts_chunk_adaptive_sizing_info_validate (TYPE_2__*) ;
 TYPE_2__* ts_chunk_sizing_info_get_default_disabled (int ) ;
 int ts_dimension_add_from_info (TYPE_1__*) ;
 int ts_dimension_info_validate (TYPE_1__*) ;
 void* ts_hypertable_cache_get_entry (int *,int ) ;
 int * ts_hypertable_cache_pin () ;
 int ts_hypertable_permissions_check (int ,int ) ;
 int ts_indexing_create_default_indexes (int *) ;
 int ts_indexing_verify_indexes (int *) ;
 scalar_t__ ts_is_hypertable (int ) ;
 scalar_t__ ts_relation_has_transition_table_trigger (int ) ;
 int ts_tablespace_attach_internal (int *,int ,int) ;

bool
ts_hypertable_create_from_info(Oid table_relid, int32 hypertable_id, uint32 flags,
          DimensionInfo *time_dim_info, DimensionInfo *space_dim_info,
          Name associated_schema_name, Name associated_table_prefix,
          ChunkSizingInfo *chunk_sizing_info)
{
 Cache *hcache;
 Hypertable *ht;
 Oid associated_schema_oid;
 Oid user_oid = GetUserId();
 Oid tspc_oid = get_rel_tablespace(table_relid);
 bool table_has_data;
 NameData schema_name, table_name, default_associated_schema_name;
 Relation rel;
 bool if_not_exists = (flags & HYPERTABLE_CREATE_IF_NOT_EXISTS) != 0;


 if (if_not_exists && ts_is_hypertable(table_relid))
 {
  ereport(NOTICE,
    (errcode(ERRCODE_TS_HYPERTABLE_EXISTS),
     errmsg("table \"%s\" is already a hypertable, skipping",
      get_rel_name(table_relid))));

  return 0;
 }
 rel = heap_open(table_relid, AccessExclusiveLock);


 if (ts_is_hypertable(table_relid))
 {




  heap_close(rel, AccessExclusiveLock);

  if (if_not_exists)
  {
   ereport(NOTICE,
     (errcode(ERRCODE_TS_HYPERTABLE_EXISTS),
      errmsg("table \"%s\" is already a hypertable, skipping",
       get_rel_name(table_relid))));
   return 0;
  }

  ereport(ERROR,
    (errcode(ERRCODE_TS_HYPERTABLE_EXISTS),
     errmsg("table \"%s\" is already a hypertable", get_rel_name(table_relid))));
 }





 ts_hypertable_permissions_check(table_relid, user_oid);


 switch (get_rel_relkind(table_relid))
 {







  case 128:
   break;
  default:
   ereport(ERROR, (errcode(ERRCODE_WRONG_OBJECT_TYPE), errmsg("invalid relation type")));
 }


 hypertable_validate_constraints(table_relid);

 table_has_data = relation_has_tuples(rel);

 if ((flags & HYPERTABLE_CREATE_MIGRATE_DATA) == 0 && table_has_data)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("table \"%s\" is not empty", get_rel_name(table_relid)),
     errhint("You can migrate data by specifying 'migrate_data => true' when calling "
       "this function.")));

 if (is_inheritance_table(table_relid))
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("table \"%s\" is already partitioned", get_rel_name(table_relid)),
     errdetail(
      "It is not possible to turn tables that use inheritance into hypertables.")));

 if (!table_is_logged(table_relid))
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("table \"%s\" has to be logged", get_rel_name(table_relid)),
     errdetail(
      "It is not possible to turn temporary or unlogged tables into hypertables.")));

 if (table_has_replica_identity(rel))
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("table \"%s\" has replica identity set", get_rel_name(table_relid)),
     errdetail("Logical replication is not supported on hypertables.")));

 if (table_has_rules(rel))
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("hypertables do not support rules"),
     errdetail("Table \"%s\" has attached rules, which do not work on hypertables.",
         get_rel_name(table_relid)),
     errhint("Remove the rules before calling create_hypertable")));





 if (((void*)0) == associated_schema_name)
 {
  namestrcpy(&default_associated_schema_name, INTERNAL_SCHEMA_NAME);
  associated_schema_name = &default_associated_schema_name;
 }

 associated_schema_oid =
  hypertable_check_associated_schema_permissions(NameStr(*associated_schema_name), user_oid);


 if (!OidIsValid(associated_schema_oid))
  hypertable_create_schema(NameStr(*associated_schema_name));





 if (ts_relation_has_transition_table_trigger(table_relid))
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("hypertables do not support transition tables in triggers")));

 if (((void*)0) == chunk_sizing_info)
  chunk_sizing_info = ts_chunk_sizing_info_get_default_disabled(table_relid);


 if (OidIsValid(chunk_sizing_info->func))
 {
  ts_chunk_adaptive_sizing_info_validate(chunk_sizing_info);

  if (chunk_sizing_info->target_size_bytes > 0)
  {
   ereport(NOTICE,
     (errcode(ERRCODE_WARNING),
      errmsg("adaptive chunking is a BETA feature and is not recommended for "
       "production deployments")));

   time_dim_info->adaptive_chunking = 1;
  }
 }
 else
 {
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("invalid chunk_sizing function: cannot be NULL")));
 }


 ts_dimension_info_validate(time_dim_info);

 if (DIMENSION_INFO_IS_SET(space_dim_info))
  ts_dimension_info_validate(space_dim_info);


 namestrcpy(&schema_name, get_namespace_name(get_rel_namespace(table_relid)));
 namestrcpy(&table_name, get_rel_name(table_relid));

 hypertable_insert(hypertable_id,
       &schema_name,
       &table_name,
       associated_schema_name,
       associated_table_prefix,
       &chunk_sizing_info->func_schema,
       &chunk_sizing_info->func_name,
       chunk_sizing_info->target_size_bytes,
       DIMENSION_INFO_IS_SET(space_dim_info) ? 2 : 1,
       0);


 hcache = ts_hypertable_cache_pin();
 time_dim_info->ht = ts_hypertable_cache_get_entry(hcache, table_relid);

 Assert(time_dim_info->ht != ((void*)0));


 ts_dimension_add_from_info(time_dim_info);

 if (DIMENSION_INFO_IS_SET(space_dim_info))
 {
  space_dim_info->ht = time_dim_info->ht;
  ts_dimension_add_from_info(space_dim_info);
 }


 ts_cache_release(hcache);
 hcache = ts_hypertable_cache_pin();
 ht = ts_hypertable_cache_get_entry(hcache, table_relid);

 Assert(ht != ((void*)0));


 ts_indexing_verify_indexes(ht);


 if (OidIsValid(tspc_oid))
 {
  NameData tspc_name;

  namestrcpy(&tspc_name, get_tablespace_name(tspc_oid));
  ts_tablespace_attach_internal(&tspc_name, table_relid, 0);
 }







 heap_close(rel, NoLock);

 if (table_has_data)
 {
  ereport(NOTICE,
    (errmsg("migrating data to chunks"),
     errdetail("Migration might take a while depending on the amount of data.")));

  timescaledb_move_from_table_to_chunks(ht, AccessShareLock);
 }

 insert_blocker_trigger_add(table_relid);

 if ((flags & HYPERTABLE_CREATE_DISABLE_DEFAULT_INDEXES) == 0)
  ts_indexing_create_default_indexes(ht);

 ts_cache_release(hcache);

 return 1;
}
