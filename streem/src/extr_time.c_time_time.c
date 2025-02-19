
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_year; int tm_mon; int tm_mday; int tm_sec; int tm_min; int tm_hour; int member_0; } ;
struct timeval {long tv_sec; long tv_usec; int member_0; } ;
typedef int strm_value ;
typedef int strm_string ;
typedef int strm_stream ;


 int STRM_NG ;
 int TZ_FAIL ;
 int TZ_NONE ;
 int gettimeofday (struct timeval*,int *) ;
 void* mktime (struct tm*) ;
 int parse_tz (int ,int ) ;
 int strm_get_args (int *,int,int *,char*,char**,int*) ;
 int strm_raise (int *,char*) ;
 int strm_str_len (int ) ;
 int strm_str_ptr (int ) ;
 int strm_time_parse_time (char*,int,long*,long*,int*) ;
 int strm_value_int (int ) ;
 int strm_value_str (int ) ;
 int time_alloc (struct timeval*,int,int *) ;
 int time_localoffset (int) ;

__attribute__((used)) static int
time_time(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct timeval tv = {0};
  struct tm tm = {0};
  time_t t;
  int utc_offset = 0;

  switch (argc) {
  case 1:
    {
      char* s;
      int slen;
      long sec, usec;

      strm_get_args(strm, argc, args, "s", &s, &slen);
      if (strm_time_parse_time(s, slen, &sec, &usec, &utc_offset) < 0) {
        strm_raise(strm, "bad time format");
        return STRM_NG;
      }
      tv.tv_sec = sec;
      tv.tv_usec = usec;
      return time_alloc(&tv, utc_offset, ret);
    }
    break;
  case 3:
    tm.tm_year = strm_value_int(args[0]);
    tm.tm_mon = strm_value_int(args[1])-1;
    tm.tm_mday = strm_value_int(args[2]);
    tv.tv_sec = mktime(&tm);
    tv.tv_sec += time_localoffset(1);
    utc_offset = TZ_NONE;
    return time_alloc(&tv, utc_offset, ret);
  case 8:
    {
      strm_string str = strm_value_str(args[7]);
      utc_offset = parse_tz(strm_str_ptr(str), strm_str_len(str));
      if (utc_offset == TZ_FAIL) {
        strm_raise(strm, "wrong timezeone");
        return STRM_NG;
      }
    }
  case 7:
    tv.tv_usec = strm_value_int(args[6])/1000;
  case 6:
    tm.tm_sec = strm_value_int(args[5]);
  case 5:
    tm.tm_min = strm_value_int(args[4]);
  case 4:
    tm.tm_year = strm_value_int(args[0]);
    tm.tm_mon = strm_value_int(args[1]);
    tm.tm_mday = strm_value_int(args[2]);
    tm.tm_hour = strm_value_int(args[3]);
    t = mktime(&tm);
    tv.tv_sec = t;
    if (argc == 8) {
      tv.tv_sec += time_localoffset(1);
      tv.tv_sec -= utc_offset;
    }
    else {
      utc_offset = time_localoffset(0);
    }
    return time_alloc(&tv, utc_offset, ret);
  default:
    strm_raise(strm, "wrong # of arguments");
    return STRM_NG;
  }
  gettimeofday(&tv, ((void*)0));
  return time_alloc(&tv, utc_offset, ret);
}
