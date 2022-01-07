
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;
typedef int Oid ;
typedef int Datum ;



 int DatumGetInt16 (int ) ;
 int DatumGetInt32 (int ) ;
 int DatumGetInt64 (int ) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;





 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int format_type_be (int) ;
 int pg_unreachable () ;

int64
gapfill_datum_get_internal(Datum value, Oid type)
{
 switch (type)
 {
  case 132:
   return DatumGetInt16(value);
  case 133:
  case 131:
   return DatumGetInt32(value);
  case 129:
  case 128:
  case 130:
   return DatumGetInt64(value);
  default:





   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("unsupported datatype for time_bucket_gapfill: %s",
       format_type_be(type))));
   pg_unreachable();
   break;
 }
}
