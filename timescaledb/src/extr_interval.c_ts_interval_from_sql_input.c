
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int integer_now_func_schema; int integer_now_func; } ;
struct TYPE_13__ {TYPE_1__ fd; } ;
struct TYPE_12__ {int is_time_interval; int integer_interval; int time_interval; } ;
struct TYPE_11__ {int space; } ;
typedef int Oid ;
typedef TYPE_2__ Hypertable ;
typedef TYPE_3__ FormData_ts_interval ;
typedef TYPE_4__ Dimension ;
typedef int Datum ;
typedef int Cache ;


 int * DatumGetIntervalP (int ) ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERRCODE_TS_HYPERTABLE_NOT_EXIST ;
 int ERROR ;
 int GetUserId () ;




 int IS_INTEGER_TYPE (int) ;
 int NameStr (int ) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,char*,...) ;
 int get_rel_name (int) ;
 TYPE_4__* hyperspace_get_open_dimension (int ,int ) ;
 TYPE_3__* palloc0 (int) ;
 int strlen (int ) ;
 int ts_cache_release (int *) ;
 int ts_dimension_get_partition_type (TYPE_4__*) ;
 int ts_dimension_open_typecheck (int const,int,char*) ;
 TYPE_2__* ts_hypertable_cache_get_entry (int *,int) ;
 int * ts_hypertable_cache_pin () ;
 int ts_hypertable_permissions_check (int,int ) ;
 int ts_time_value_to_internal (int ,int) ;

FormData_ts_interval *
ts_interval_from_sql_input(Oid relid, Datum interval, Oid interval_type, char *parameter_name,
         char *caller_name)
{
 Hypertable *hypertable;
 Cache *hcache;
 FormData_ts_interval *invl = palloc0(sizeof(FormData_ts_interval));
 Oid partitioning_type;
 Dimension *open_dim;

 ts_hypertable_permissions_check(relid, GetUserId());

 hcache = ts_hypertable_cache_pin();
 hypertable = ts_hypertable_cache_get_entry(hcache, relid);

 if (hypertable == ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_TS_HYPERTABLE_NOT_EXIST),
     errmsg("could not add drop_chunks policy because \"%s\" is not a hypertable",
      get_rel_name(relid))));

 open_dim = hyperspace_get_open_dimension(hypertable->space, 0);

 if (((void*)0) == open_dim)
  elog(ERROR, "internal error: no open dimension found while parsing interval");

 partitioning_type = ts_dimension_get_partition_type(open_dim);
 ts_cache_release(hcache);

 switch (interval_type)
 {
  case 128:
   if (IS_INTEGER_TYPE(partitioning_type))
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
       errmsg("invalid parameter value for %s", parameter_name),
       errhint("INTERVAL time duration cannot be used with hypertables with "
         "integer-based time dimensions")));
   ts_dimension_open_typecheck(128, partitioning_type, caller_name);
   invl->is_time_interval = 1;
   invl->time_interval = *DatumGetIntervalP(interval);
   break;
  case 131:
  case 130:
  case 129:
   if (!IS_INTEGER_TYPE(partitioning_type))
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
       errmsg("invalid parameter value for %s", parameter_name),
       errhint("integer-based time duration cannot be used with hypertables with "
         "a timestamp-based time dimensions")));

   if (strlen(NameStr(open_dim->fd.integer_now_func)) == 0 ||
    strlen(NameStr(open_dim->fd.integer_now_func_schema)) == 0)
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
       errmsg("integer_now_func not set on hypertable %s", get_rel_name(relid))));

   invl->is_time_interval = 0;
   invl->integer_interval = ts_time_value_to_internal(interval, interval_type);

   break;
  default:
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("invalid type for parameter %s in %s", parameter_name, caller_name)));
 }

 return invl;
}
