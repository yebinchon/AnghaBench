#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int time_t ;
struct tm {int /*<<< orphan*/  tm_year; int /*<<< orphan*/  member_0; } ;
typedef  size_t strm_int ;

/* Variables and functions */
 int TZ_FAIL ; 
 int TZ_NONE ; 
 double FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int*,struct tm*) ; 
 int /*<<< orphan*/  FUNC3 (double) ; 
 char* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,size_t) ; 
 int FUNC6 (struct tm*) ; 
 int FUNC7 (char const*,size_t) ; 
 double FUNC8 (double,double) ; 
 long FUNC9 (char const**,char const*) ; 
 char* FUNC10 (char const*,char*,struct tm*) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int) ; 

int
FUNC13(const char* p, strm_int len, long* sec, long* usec, int* offset)
{
  const char* s = p;
  const char* t;
  const char* t2;
  const char* tend;
  struct tm tm = {0};
  int localoffset = FUNC12(1);
  time_t tt;

  if (s[len] != '\0') {
    char* pp = FUNC4(len+1);
    FUNC5(pp, p, len);
    pp[len] = '\0';
    s = (const char*)pp;
  }
  tend = s + len;
  *usec = 0;
  t = FUNC10(s, "%Y.%m.%d", &tm);   /* Streem time literal */
  if (t == NULL) {
    t = FUNC10(s, "%Y-%m-%d", &tm); /* ISO8601 extended */
  }
  if (t == NULL) {
    t = FUNC10(s, "%Y/%m/%d", &tm);
  }
  if (t == NULL) {
    t = FUNC10(s, "%Y%m%d", &tm);   /* ISO8601 basic */
    if (t && !(t[0] == 'T' || t[0] == ' ')) {
      t = NULL;
    }
  }
  if (t == NULL) {
    t = FUNC10(s, "%b %d %Y", &tm);
    /* check year and hour confusion (Apr 14 20:00 is not year 20 AD) */
    if (t && t[0] == ':') {
      t = NULL;
    }
  }
  if (t == NULL) {
    struct tm tm2;
    tt = FUNC11(NULL);
    FUNC2(&tt, &tm2);
    tm.tm_year = tm2.tm_year;
    t = FUNC10(s, "%b %d", &tm);
  }
  if (t == NULL) goto bad;
  if (t == tend) {
    tt = FUNC6(&tm);
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

  t2 = FUNC10(t, "%H:%M:%S", &tm);
  if (t2 == NULL) {
    t2 = FUNC10(t, "%H%M%S", &tm);
  }
  if (t2 == NULL) {
    t2 = FUNC10(t, "%H:%M", &tm);
    if (t2 == NULL)
      goto bad;
  }
  t = t2;
  tt = FUNC6(&tm);
  if (t[0] == '.') {          /* frac */
    t++;
    long frac = FUNC9(&t, tend);
    if (frac < 0) goto bad;
    if (frac > 0) {
      double d = FUNC0(FUNC3((double)frac));
      d = ((double)frac / FUNC8(10.0, d));
      *usec = d * 1000000;
    }
  }
  if (t[0] == 'Z') {          /* UTC zone */
    tt += localoffset;
    *offset = 0;
  }
  else if (t == tend) {
    *offset = localoffset;
  }
  else {
    int n;

    switch (t[0]) {           /* offset zone */
    case '+':
    case '-':
      n = FUNC7(t, (strm_int)(tend-t));
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
  if (s != p) FUNC1((char*)s);
  return 0;
 bad:
  if (s != p) FUNC1((char*)s);
  return -1;
}