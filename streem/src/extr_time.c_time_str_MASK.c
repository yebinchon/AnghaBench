#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tm {scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; } ;
struct TYPE_2__ {scalar_t__ tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct strm_time {int utc_offset; TYPE_1__ tv; } ;
typedef  int /*<<< orphan*/  strm_value ;
typedef  int /*<<< orphan*/  strm_stream ;
typedef  int /*<<< orphan*/  strm_int ;
typedef  int /*<<< orphan*/  sbuf ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int STRM_NG ; 
 int STRM_OK ; 
 int TZ_FAIL ; 
 int TZ_NONE ; 
 struct strm_time* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,struct tm*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char,...) ; 
 size_t FUNC4 (char*,int,char*,struct tm*) ; 
 size_t FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,size_t) ; 

__attribute__((used)) static int
FUNC10(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct strm_time *t;
  struct tm tm;
  int utc_offset;
  char buf[256];
  char *p;
  size_t n;

  if (argc == 1) {
    t = FUNC0(args[0]);
    utc_offset = t->utc_offset;
  }
  else {
    strm_value time;
    char* s;
    strm_int slen;

    FUNC6(strm, argc, args, "v|s", &time, &s, &slen);
    t = FUNC0(time);
    utc_offset = FUNC2(s, slen);
    if (utc_offset == TZ_FAIL) {
      FUNC7(strm, "wrong timezeone");
      return STRM_NG;
    }
  }
  if (utc_offset == TZ_NONE) {
    FUNC1(t->tv.tv_sec, 0, &tm);
    if (tm.tm_hour == 0 && tm.tm_min == 0 && tm.tm_sec == 0) {
      n = FUNC4(buf, sizeof(buf), "%Y.%m.%d", &tm);
      *ret = FUNC8(buf, n);
      return STRM_OK;
    }
    utc_offset = 0;
  }
  FUNC1(t->tv.tv_sec, utc_offset, &tm);
  n = FUNC4(buf, sizeof(buf), "%Y.%m.%dT%H:%M:%S", &tm);
  p = buf+n;
  if (t->tv.tv_usec != 0) {
    char sbuf[20];
    double d = t->tv.tv_usec / 1000000.0;
    char *t;
    size_t len;

    FUNC3(sbuf, sizeof(sbuf), "%.3f", d);
    t = sbuf+1;
    len = FUNC5(t);
    FUNC9(p, t, len);
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
    FUNC3(p, sizeof(buf)-(p-buf), "%c%02d:%02d", sign, off/60, off%60);
  }
  *ret = FUNC8(buf, FUNC5(buf));
  return STRM_OK;
}