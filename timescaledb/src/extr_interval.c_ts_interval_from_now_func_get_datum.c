
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64 ;
typedef int Oid ;
typedef int Datum ;


 int AssertArg (int ) ;
 scalar_t__ DatumGetInt16 (int ) ;
 scalar_t__ DatumGetInt32 (int ) ;
 scalar_t__ DatumGetInt64 (int ) ;
 int ERRCODE_INTERVAL_FIELD_OVERFLOW ;
 int ERROR ;



 int IS_INTEGER_TYPE (int) ;
 int Int16GetDatum (scalar_t__) ;
 int Int32GetDatum (scalar_t__) ;
 int Int64GetDatum (scalar_t__) ;
 int OidFunctionCall0 (int) ;
 scalar_t__ PG_INT16_MAX ;
 scalar_t__ PG_INT16_MIN ;
 scalar_t__ PG_INT32_MAX ;
 scalar_t__ PG_INT32_MIN ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int pg_unreachable () ;
 int ts_interval_now_func_validate (int,int) ;

__attribute__((used)) static Datum
ts_interval_from_now_func_get_datum(int64 interval, Oid time_dim_type, Oid now_func)
{
 Datum now;
 int64 res;

 AssertArg(IS_INTEGER_TYPE(time_dim_type));

 ts_interval_now_func_validate(now_func, time_dim_type);
 now = OidFunctionCall0(now_func);

 switch (time_dim_type)
 {
  case 130:
   res = DatumGetInt16(now) - interval;
   if (res < PG_INT16_MIN || res > PG_INT16_MAX)
    ereport(ERROR,
      (errcode(ERRCODE_INTERVAL_FIELD_OVERFLOW), errmsg("ts_interval overflow")));
   return Int16GetDatum(res);
  case 129:
   res = DatumGetInt32(now) - interval;
   if (res < PG_INT32_MIN || res > PG_INT32_MAX)
    ereport(ERROR,
      (errcode(ERRCODE_INTERVAL_FIELD_OVERFLOW), errmsg("ts_interval overflow")));
   return Int32GetDatum(res);
  case 128:
   res = DatumGetInt64(now) - interval;
   if (res > DatumGetInt64(now))
    ereport(ERROR,
      (errcode(ERRCODE_INTERVAL_FIELD_OVERFLOW), errmsg("ts_interval overflow")));
   return Int64GetDatum(res);
  default:
   pg_unreachable();
 }
}
