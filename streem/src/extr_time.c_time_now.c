
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
typedef int strm_value ;
typedef int strm_stream ;
typedef int strm_int ;


 int STRM_NG ;
 int TZ_FAIL ;
 int gettimeofday (struct timeval*,int *) ;
 int parse_tz (char*,int ) ;
 int strm_get_args (int *,int,int *,char*,char**,int *) ;
 int strm_raise (int *,char*) ;
 int time_alloc (struct timeval*,int,int *) ;
 int time_localoffset (int ) ;

__attribute__((used)) static int
time_now(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct timeval tv;
  int utc_offset;

  if (argc == 0) {
    utc_offset = time_localoffset(0);
  }
  else {
    char *s;
    strm_int slen;

    strm_get_args(strm, argc, args, "s", &s, &slen);
    utc_offset = parse_tz(s, slen);
    if (utc_offset == TZ_FAIL) {
      strm_raise(strm, "wrong timezeone");
      return STRM_NG;
    }
  }
  gettimeofday(&tv, ((void*)0));
  return time_alloc(&tv, utc_offset, ret);
}
