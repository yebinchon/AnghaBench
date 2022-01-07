
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int Datum ;



 int DATEVAL_NOBEGIN ;
 int DT_NOBEGIN ;
 int DateADTGetDatum (int ) ;
 int PG_INT64_MIN ;


 int TimestampGetDatum (int ) ;
 int TimestampTzGetDatum (int ) ;
 int ts_internal_to_time_value (int ,int) ;

__attribute__((used)) static Datum
time_range_internal_to_min_time_value(Oid type)
{
 switch (type)
 {
  case 129:
   return TimestampGetDatum(DT_NOBEGIN);
  case 128:
   return TimestampTzGetDatum(DT_NOBEGIN);
  case 130:
   return DateADTGetDatum(DATEVAL_NOBEGIN);
  default:
   return ts_internal_to_time_value(PG_INT64_MIN, type);
 }
}
