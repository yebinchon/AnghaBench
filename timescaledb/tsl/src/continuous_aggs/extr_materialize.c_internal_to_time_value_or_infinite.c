
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64 ;
typedef int Oid ;
typedef int Datum ;


 scalar_t__ PG_INT64_MAX ;
 scalar_t__ PG_INT64_MIN ;
 int time_range_internal_to_max_time_value (int ) ;
 int time_range_internal_to_min_time_value (int ) ;
 int ts_internal_to_time_value (scalar_t__,int ) ;

__attribute__((used)) static Datum
internal_to_time_value_or_infinite(int64 internal, Oid time_type, bool *is_infinite_out)
{



 if (internal == PG_INT64_MIN)
 {
  if (is_infinite_out != ((void*)0))
   *is_infinite_out = 1;
  return time_range_internal_to_min_time_value(time_type);
 }
 else if (internal == PG_INT64_MAX)
 {
  if (is_infinite_out != ((void*)0))
   *is_infinite_out = 1;
  return time_range_internal_to_max_time_value(time_type);
 }
 else
 {
  if (is_infinite_out != ((void*)0))
   *is_infinite_out = 0;
  return ts_internal_to_time_value(internal, time_type);
 }
}
