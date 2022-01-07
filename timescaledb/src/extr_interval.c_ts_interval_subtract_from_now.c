
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int integer_interval; int time_interval; scalar_t__ is_time_interval; } ;
typedef int Oid ;
typedef TYPE_1__ FormData_ts_interval ;
typedef int Dimension ;
typedef int Datum ;


 int AssertArg (int ) ;

 int DirectFunctionCall1 (int ,int ) ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int GetCurrentTimestamp () ;
 int IntervalPGetDatum (int *) ;
 int InvalidOid ;


 int TimestampTzGetDatum (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int get_integer_now_func (int *) ;
 int pg_unreachable () ;
 int timestamp_date ;
 int timestamp_mi_interval ;
 int timestamptz_mi_interval ;
 int timestamptz_timestamp ;
 int ts_dimension_get_partition_type (int *) ;
 int ts_interval_from_now_func_get_datum (int ,int,int) ;
 int ts_interval_now_func_validate (int,int) ;

Datum
ts_interval_subtract_from_now(FormData_ts_interval *invl, Dimension *open_dim)
{
 Oid type_oid;
 AssertArg(invl != ((void*)0));
 AssertArg(open_dim != ((void*)0));

 type_oid = ts_dimension_get_partition_type(open_dim);

 if (invl->is_time_interval)
 {
  Datum res = TimestampTzGetDatum(GetCurrentTimestamp());

  switch (type_oid)
  {
   case 129:
    res = DirectFunctionCall1(timestamptz_timestamp, res);
    res = DirectFunctionCall2(timestamp_mi_interval,
            res,
            IntervalPGetDatum(&invl->time_interval));

    return res;
   case 128:
    res = DirectFunctionCall2(timestamptz_mi_interval,
            res,
            IntervalPGetDatum(&invl->time_interval));

    return res;
   case 130:
    res = DirectFunctionCall1(timestamptz_timestamp, res);
    res = DirectFunctionCall2(timestamp_mi_interval,
            res,
            IntervalPGetDatum(&invl->time_interval));
    res = DirectFunctionCall1(timestamp_date, res);

    return res;
   default:
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
       errmsg("unknown time type OID %d", type_oid)));
  }
 }
 else
 {
  Oid now_func = get_integer_now_func(open_dim);
  ts_interval_now_func_validate(now_func, type_oid);

  if (InvalidOid == now_func)
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("integer_now function must be set")));

  return ts_interval_from_now_func_get_datum(invl->integer_interval, type_oid, now_func);
 }

 pg_unreachable();
 return 0;
}
