
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;
typedef int Oid ;
typedef int Datum ;


 int Assert (int ) ;

 int ERROR ;



 int INTERVALOID ;
 int OidInputFunctionCall (int,char*,int,int) ;
 int OidIsValid (int) ;
 int PG_INT16_MAX ;
 int PG_INT16_MIN ;
 int PG_INT32_MAX ;
 int PG_INT32_MIN ;
 int PG_INT64_MAX ;
 int PG_INT64_MIN ;


 int elog (int ,char*,char const*) ;
 int getTypeInputInfo (int ,int*,int*) ;
 int parse_int_interval (char*,int ,int ,char const*) ;
 int pg_unreachable () ;
 int ts_interval_value_to_internal (int ,int ) ;

__attribute__((used)) static int64
parse_interval(char *value, Oid column_type, const char *option_name)
{
 Datum interval;
 Oid in_fn;
 Oid typIOParam;

 switch (column_type)
 {
  case 132:
   return parse_int_interval(value, PG_INT16_MIN, PG_INT16_MAX, option_name);
  case 131:
   return parse_int_interval(value, PG_INT32_MIN, PG_INT32_MAX, option_name);
  case 130:
   return parse_int_interval(value, PG_INT64_MIN, PG_INT64_MAX, option_name);
  case 128:
  case 129:
  case 133:
   getTypeInputInfo(INTERVALOID, &in_fn, &typIOParam);
   Assert(OidIsValid(in_fn));
   interval = OidInputFunctionCall(in_fn, value, typIOParam, -1);
   return ts_interval_value_to_internal(interval, INTERVALOID);
  default:
   elog(ERROR, "unknown time type when parsing timescaledb.%s", option_name);
   pg_unreachable();
 }
}
