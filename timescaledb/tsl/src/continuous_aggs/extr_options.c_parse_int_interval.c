
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64 ;


 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 int scanint8 (char const*,int,scalar_t__*) ;

__attribute__((used)) static inline int64
parse_int_interval(const char *value, int64 min, int64 max, const char *option_name)
{
 int64 result;
 if (!scanint8(value, 1, &result))
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("parameter timescaledb.%s must be an integer for hypertables with integer "
      "time values",
      option_name)));
 if (result < min || result > max)
  ereport(ERROR,
    (errcode(ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE),
     errmsg("timescaledb.%s out of range", option_name)));
 return result;
}
