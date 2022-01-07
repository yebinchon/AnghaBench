
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;
typedef int TimevalInfinity ;
typedef int TimestampTz ;
typedef int Timestamp ;
typedef int Oid ;
typedef int Datum ;
typedef int DateADT ;



 int DATE_IS_NOBEGIN (int ) ;
 int DATE_NOT_FINITE (int ) ;
 int DatumGetDateADT (int ) ;
 int DatumGetTimestamp (int ) ;
 int DatumGetTimestampTz (int ) ;
 int PG_INT64_MAX ;
 int PG_INT64_MIN ;


 int TIMESTAMP_IS_NOBEGIN (int ) ;
 int TIMESTAMP_NOT_FINITE (int ) ;
 int TimevalNegInfinity ;
 int TimevalPosInfinity ;
 int ts_time_value_to_internal (int ,int) ;

int64
ts_time_value_to_internal_or_infinite(Datum time_val, Oid type_oid,
           TimevalInfinity *is_infinite_out)
{
 switch (type_oid)
 {
  case 129:
  {
   Timestamp ts = DatumGetTimestamp(time_val);
   if (TIMESTAMP_NOT_FINITE(ts))
   {
    if (TIMESTAMP_IS_NOBEGIN(ts))
    {
     if (is_infinite_out != ((void*)0))
      *is_infinite_out = TimevalNegInfinity;
     return PG_INT64_MIN;
    }
    else
    {
     if (is_infinite_out != ((void*)0))
      *is_infinite_out = TimevalPosInfinity;
     return PG_INT64_MAX;
    }
   }

   return ts_time_value_to_internal(time_val, type_oid);
  }
  case 128:
  {
   TimestampTz ts = DatumGetTimestampTz(time_val);
   if (TIMESTAMP_NOT_FINITE(ts))
   {
    if (TIMESTAMP_IS_NOBEGIN(ts))
    {
     if (is_infinite_out != ((void*)0))
      *is_infinite_out = TimevalNegInfinity;
     return PG_INT64_MIN;
    }
    else
    {
     if (is_infinite_out != ((void*)0))
      *is_infinite_out = TimevalPosInfinity;
     return PG_INT64_MAX;
    }
   }

   return ts_time_value_to_internal(time_val, type_oid);
  }
  case 130:
  {
   DateADT d = DatumGetDateADT(time_val);
   if (DATE_NOT_FINITE(d))
   {
    if (DATE_IS_NOBEGIN(d))
    {
     if (is_infinite_out != ((void*)0))
      *is_infinite_out = TimevalNegInfinity;
     return PG_INT64_MIN;
    }
    else
    {
     if (is_infinite_out != ((void*)0))
      *is_infinite_out = TimevalPosInfinity;
     return PG_INT64_MAX;
    }
   }

   return ts_time_value_to_internal(time_val, type_oid);
  }
 }

 return ts_time_value_to_internal(time_val, type_oid);
}
