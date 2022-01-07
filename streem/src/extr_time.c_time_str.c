
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tm {scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; } ;
struct TYPE_2__ {scalar_t__ tv_usec; int tv_sec; } ;
struct strm_time {int utc_offset; TYPE_1__ tv; } ;
typedef int strm_value ;
typedef int strm_stream ;
typedef int strm_int ;
typedef int sbuf ;
typedef int buf ;


 int STRM_NG ;
 int STRM_OK ;
 int TZ_FAIL ;
 int TZ_NONE ;
 struct strm_time* get_time (int ) ;
 int get_tm (int ,int,struct tm*) ;
 int parse_tz (char*,int ) ;
 int snprintf (char*,int,char*,char,...) ;
 size_t strftime (char*,int,char*,struct tm*) ;
 size_t strlen (char*) ;
 int strm_get_args (int *,int,int *,char*,int *,char**,int *) ;
 int strm_raise (int *,char*) ;
 int strm_str_new (char*,size_t) ;
 int strncpy (char*,char*,size_t) ;

__attribute__((used)) static int
time_str(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct strm_time *t;
  struct tm tm;
  int utc_offset;
  char buf[256];
  char *p;
  size_t n;

  if (argc == 1) {
    t = get_time(args[0]);
    utc_offset = t->utc_offset;
  }
  else {
    strm_value time;
    char* s;
    strm_int slen;

    strm_get_args(strm, argc, args, "v|s", &time, &s, &slen);
    t = get_time(time);
    utc_offset = parse_tz(s, slen);
    if (utc_offset == TZ_FAIL) {
      strm_raise(strm, "wrong timezeone");
      return STRM_NG;
    }
  }
  if (utc_offset == TZ_NONE) {
    get_tm(t->tv.tv_sec, 0, &tm);
    if (tm.tm_hour == 0 && tm.tm_min == 0 && tm.tm_sec == 0) {
      n = strftime(buf, sizeof(buf), "%Y.%m.%d", &tm);
      *ret = strm_str_new(buf, n);
      return STRM_OK;
    }
    utc_offset = 0;
  }
  get_tm(t->tv.tv_sec, utc_offset, &tm);
  n = strftime(buf, sizeof(buf), "%Y.%m.%dT%H:%M:%S", &tm);
  p = buf+n;
  if (t->tv.tv_usec != 0) {
    char sbuf[20];
    double d = t->tv.tv_usec / 1000000.0;
    char *t;
    size_t len;

    snprintf(sbuf, sizeof(sbuf), "%.3f", d);
    t = sbuf+1;
    len = strlen(t);
    strncpy(p, t, len);
    p += len;
  }
  if (utc_offset == 0) {
    p[0] = 'Z';
    p[1] = '\0';
  }
  else {
    int off = utc_offset / 60;
    char sign = off > 0 ? '+' : '-';

    if (off < 0) off = -off;
    snprintf(p, sizeof(buf)-(p-buf), "%c%02d:%02d", sign, off/60, off%60);
  }
  *ret = strm_str_new(buf, strlen(buf));
  return STRM_OK;
}
