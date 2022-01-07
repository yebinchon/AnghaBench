
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;
typedef int Oid ;
typedef int Datum ;


 int Assert (int) ;

 int DatumGetInt16 (int ) ;
 int DatumGetInt32 (int ) ;
 int DatumGetInt64 (int ) ;
 int DatumGetIntervalP (int ) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;



 int INTERVALOID ;


 int USECS_PER_DAY ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int format_type_be (int) ;
 int interval_to_usec (int ) ;
 int pg_unreachable () ;

__attribute__((used)) static inline int64
gapfill_period_get_internal(Oid timetype, Oid argtype, Datum arg)
{
 switch (timetype)
 {
  case 133:
   Assert(INTERVALOID == argtype);
   return interval_to_usec(DatumGetIntervalP(arg)) / USECS_PER_DAY;
   break;
  case 129:
  case 128:
   Assert(INTERVALOID == argtype);
   return interval_to_usec(DatumGetIntervalP(arg));
   break;
  case 132:
   Assert(132 == argtype);
   return DatumGetInt16(arg);
  case 131:
   Assert(131 == argtype);
   return DatumGetInt32(arg);
  case 130:
   Assert(130 == argtype);
   return DatumGetInt64(arg);
  default:





   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("unsupported datatype for time_bucket_gapfill: %s",
       format_type_be(timetype))));
   pg_unreachable();
   break;
 }
}
