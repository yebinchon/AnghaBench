
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int HTSU_Result ;


 int ERRCODE_TS_HYPERTABLE_NOT_EXIST ;
 int ERROR ;
 int RowExclusiveLock ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int get_namespace_name (int ) ;
 int get_rel_name (int ) ;
 int get_rel_namespace (int ) ;
 int hypertable_scan (int ,int ,int ,int *,int ,int) ;
 int tuple_found_lock ;

HTSU_Result
ts_hypertable_lock_tuple(Oid table_relid)
{
 HTSU_Result result;
 int num_found;

 num_found = hypertable_scan(get_namespace_name(get_rel_namespace(table_relid)),
        get_rel_name(table_relid),
        tuple_found_lock,
        &result,
        RowExclusiveLock,
        1);

 if (num_found != 1)
  ereport(ERROR,
    (errcode(ERRCODE_TS_HYPERTABLE_NOT_EXIST),
     errmsg("table \"%s\" is not a hypertable", get_rel_name(table_relid))));

 return result;
}
