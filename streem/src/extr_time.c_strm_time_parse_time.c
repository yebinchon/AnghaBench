
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_year; int member_0; } ;
typedef size_t strm_int ;


 int TZ_FAIL ;
 int TZ_NONE ;
 double ceil (int ) ;
 int free (char*) ;
 int localtime_r (int*,struct tm*) ;
 int log10 (double) ;
 char* malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 int mktime (struct tm*) ;
 int parse_tz (char const*,size_t) ;
 double pow (double,double) ;
 long scan_num (char const**,char const*) ;
 char* strptime (char const*,char*,struct tm*) ;
 int time (int *) ;
 int time_localoffset (int) ;

int
strm_time_parse_time(const char* p, strm_int len, long* sec, long* usec, int* offset)
{
  const char* s = p;
  const char* t;
  const char* t2;
  const char* tend;
  struct tm tm = {0};
  int localoffset = time_localoffset(1);
  time_t tt;

  if (s[len] != '\0') {
    char* pp = malloc(len+1);
    memcpy(pp, p, len);
    pp[len] = '\0';
    s = (const char*)pp;
  }
  tend = s + len;
  *usec = 0;
  t = strptime(s, "%Y.%m.%d", &tm);
  if (t == ((void*)0)) {
    t = strptime(s, "%Y-%m-%d", &tm);
  }
  if (t == ((void*)0)) {
    t = strptime(s, "%Y/%m/%d", &tm);
  }
  if (t == ((void*)0)) {
    t = strptime(s, "%Y%m%d", &tm);
    if (t && !(t[0] == 'T' || t[0] == ' ')) {
      t = ((void*)0);
    }
  }
  if (t == ((void*)0)) {
    t = strptime(s, "%b %d %Y", &tm);

    if (t && t[0] == ':') {
      t = ((void*)0);
    }
  }
  if (t == ((void*)0)) {
    struct tm tm2;
    tt = time(((void*)0));
    localtime_r(&tt, &tm2);
    tm.tm_year = tm2.tm_year;
    t = strptime(s, "%b %d", &tm);
  }
  if (t == ((void*)0)) goto bad;
  if (t == tend) {
    tt = mktime(&tm);
    tt += localoffset;
    *sec = tt;
    *usec = 0;
    *offset = TZ_NONE;
    goto good;
  }

  switch (*t++) {
  case 'T':
    break;
  case ' ':
    while (*t == ' ')
      t++;
    break;
  default:
    goto bad;
  }

  t2 = strptime(t, "%H:%M:%S", &tm);
  if (t2 == ((void*)0)) {
    t2 = strptime(t, "%H%M%S", &tm);
  }
  if (t2 == ((void*)0)) {
    t2 = strptime(t, "%H:%M", &tm);
    if (t2 == ((void*)0))
      goto bad;
  }
  t = t2;
  tt = mktime(&tm);
  if (t[0] == '.') {
    t++;
    long frac = scan_num(&t, tend);
    if (frac < 0) goto bad;
    if (frac > 0) {
      double d = ceil(log10((double)frac));
      d = ((double)frac / pow(10.0, d));
      *usec = d * 1000000;
    }
  }
  if (t[0] == 'Z') {
    tt += localoffset;
    *offset = 0;
  }
  else if (t == tend) {
    *offset = localoffset;
  }
  else {
    int n;

    switch (t[0]) {
    case '+':
    case '-':
      n = parse_tz(t, (strm_int)(tend-t));
      if (n == TZ_FAIL) goto bad;
      tt += localoffset;
      tt -= n;
      *offset = n;
      break;
    default:
      goto bad;
    }
  }
  *sec = tt;
 good:
  if (s != p) free((char*)s);
  return 0;
 bad:
  if (s != p) free((char*)s);
  return -1;
}
