
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;
typedef int Oid ;
typedef int Datum ;


 int DATEOID ;
 int DEFAULT_CHUNK_TIME_INTERVAL ;
 int DEFAULT_CHUNK_TIME_INTERVAL_ADAPTIVE ;
 int DatumGetInt16 (int ) ;
 int DatumGetInt32 (int ) ;
 int DatumGetInt64 (int ) ;
 int DatumGetIntervalP (int ) ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;




 scalar_t__ IS_INTEGER_TYPE (int) ;
 int IS_VALID_OPEN_DIM_TYPE (int) ;
 int Int64GetDatum (int ) ;
 int OidIsValid (int) ;
 int USECS_PER_DAY ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int get_validated_integer_interval (int,int ) ;
 int interval_to_usec (int ) ;

__attribute__((used)) static int64
dimension_interval_to_internal(const char *colname, Oid dimtype, Oid valuetype, Datum value,
          bool adaptive_chunking)
{
 int64 interval;

 if (!IS_VALID_OPEN_DIM_TYPE(dimtype))
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("invalid dimension type: \"%s\" must be an integer, date or timestamp",
      colname)));

 if (!OidIsValid(valuetype))
 {
  if (IS_INTEGER_TYPE(dimtype))
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("integer dimensions require an explicit interval")));

  value = Int64GetDatum(adaptive_chunking ? DEFAULT_CHUNK_TIME_INTERVAL_ADAPTIVE :
              DEFAULT_CHUNK_TIME_INTERVAL);
  valuetype = 129;
 }

 switch (valuetype)
 {
  case 131:
   interval = get_validated_integer_interval(dimtype, DatumGetInt16(value));
   break;
  case 130:
   interval = get_validated_integer_interval(dimtype, DatumGetInt32(value));
   break;
  case 129:
   interval = get_validated_integer_interval(dimtype, DatumGetInt64(value));
   break;
  case 128:
   if (IS_INTEGER_TYPE(dimtype))
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
       errmsg(
        "invalid interval: must be an integer type for integer dimensions")));

   interval = interval_to_usec(DatumGetIntervalP(value));
   break;
  default:
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("invalid interval: must be an interval or integer type")));
 }

 if (dimtype == DATEOID && (interval <= 0 || interval % USECS_PER_DAY != 0))
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("invalid interval: must be multiples of one day")));

 return interval;
}
