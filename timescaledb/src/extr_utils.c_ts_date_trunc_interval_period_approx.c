
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int int64 ;


 int DAYS_PER_MONTH ;
 int DAYS_PER_QUARTER ;
 int DAYS_PER_WEEK ;
 int DAYS_PER_YEAR ;
 int DecodeUnits (int ,char*,int*) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int UNITS ;
 int USECS_PER_DAY ;
 int USECS_PER_HOUR ;
 int USECS_PER_MINUTE ;
 int USECS_PER_SEC ;
 int VARDATA_ANY (int *) ;
 int VARSIZE_ANY_EXHDR (int *) ;
 int YEARS_PER_CENTURY ;
 int YEARS_PER_DECADE ;
 int YEARS_PER_MILLENNIUM ;
 char* downcase_truncate_identifier (int ,int ,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;

int64
ts_date_trunc_interval_period_approx(text *units)
{
 int decode_type, val;
 char *lowunits =
  downcase_truncate_identifier(VARDATA_ANY(units), VARSIZE_ANY_EXHDR(units), 0);

 decode_type = DecodeUnits(0, lowunits, &val);

 if (decode_type != UNITS)
  return -1;

 switch (val)
 {
  case 129:
   return DAYS_PER_WEEK * USECS_PER_DAY;
  case 135:
   return YEARS_PER_MILLENNIUM * DAYS_PER_YEAR * USECS_PER_DAY;
  case 140:
   return YEARS_PER_CENTURY * DAYS_PER_YEAR * USECS_PER_DAY;
  case 138:
   return YEARS_PER_DECADE * DAYS_PER_YEAR * USECS_PER_DAY;
  case 128:
   return 1 * DAYS_PER_YEAR * USECS_PER_DAY;
  case 131:
   return DAYS_PER_QUARTER * USECS_PER_DAY;
  case 132:
   return DAYS_PER_MONTH * USECS_PER_DAY;
  case 139:
   return USECS_PER_DAY;
  case 137:
   return USECS_PER_HOUR;
  case 133:
   return USECS_PER_MINUTE;
  case 130:
   return USECS_PER_SEC;
  case 134:
   return USECS_PER_SEC / 1000;
  case 136:
   return 1;
  default:
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("timestamp units \"%s\" not supported", lowunits)));
 }
 return -1;
}
