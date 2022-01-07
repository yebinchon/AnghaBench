
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;
typedef int Oid ;
typedef int Datum ;


 int ERROR ;



 int Int16GetDatum (int ) ;
 int Int32GetDatum (int ) ;
 int Int64GetDatum (int ) ;
 int elog (int ,char*,int) ;
 int pg_unreachable () ;

__attribute__((used)) static Datum
ts_integer_to_internal_value(int64 value, Oid type)
{
 switch (type)
 {
  case 130:
   return Int16GetDatum(value);
  case 129:
   return Int32GetDatum(value);
  case 128:
   return Int64GetDatum(value);
  default:
   elog(ERROR, "unknown time type OID %d in ts_internal_to_time_value", type);
   pg_unreachable();
 }
}
