
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_int ;


 int TZ_FAIL ;
 int scan_num (char const**,char const*) ;

__attribute__((used)) static int
parse_tz(const char* s, strm_int len)
{
  int h, m;
  char c;
  const char* send = s+len;

  switch (s[0]) {
  case 'Z':
    return 0;
  case '+':
  case '-':
    c = *s++;
    h = scan_num(&s, send);
    if (h < 0) return TZ_FAIL;
    if (*s == ':') {
      s++;
      m = scan_num(&s, send);
    }
    else if (h >= 100) {
      int i = h;
      h = i / 100;
      m = i % 100;
    }
    else {
      m = 0;
    }
    if (h > 14) return TZ_FAIL;
    if (m > 59) return TZ_FAIL;
    return (h*60+m) * (c == '-' ? -1 : 1) * 60;
  default:
    return TZ_FAIL;
  }
}
