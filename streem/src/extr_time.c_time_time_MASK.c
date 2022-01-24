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
struct tm {int tm_year; int tm_mon; int tm_mday; int tm_sec; int tm_min; int tm_hour; int /*<<< orphan*/  member_0; } ;
struct timeval {long tv_sec; long tv_usec; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  strm_value ;
typedef  int /*<<< orphan*/  strm_string ;
typedef  int /*<<< orphan*/  strm_stream ;

/* Variables and functions */
 int STRM_NG ; 
 int TZ_FAIL ; 
 int TZ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct timeval*,int /*<<< orphan*/ *) ; 
 void* FUNC1 (struct tm*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char*,char**,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,long*,long*,int*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct timeval*,int,int /*<<< orphan*/ *) ; 
 int FUNC11 (int) ; 

__attribute__((used)) static int
FUNC12(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct timeval tv = {0};
  struct tm tm = {0};
  time_t t;
  int utc_offset = 0;

  switch (argc) {
  case 1:                       /* string */
    {
      char* s;
      int slen;
      long sec, usec;

      FUNC3(strm, argc, args, "s", &s, &slen);
      if (FUNC7(s, slen, &sec, &usec, &utc_offset) < 0) {
        FUNC4(strm, "bad time format");
        return STRM_NG;
      }
      tv.tv_sec = sec;
      tv.tv_usec = usec;
      return FUNC10(&tv, utc_offset, ret);
    }
    break;
  case 3:                       /* date (YYYY,MM,DD) */
    tm.tm_year = FUNC8(args[0]);
    tm.tm_mon = FUNC8(args[1])-1;
    tm.tm_mday = FUNC8(args[2]);
    tv.tv_sec = FUNC1(&tm);
    tv.tv_sec += FUNC11(1);
    utc_offset = TZ_NONE;
    return FUNC10(&tv, utc_offset, ret);
  case 8:                       /* date (YYYY,MM,DD,hh,mm,ss,usec,zone) */
    {
      strm_string str = FUNC9(args[7]);
      utc_offset = FUNC2(FUNC6(str), FUNC5(str));
      if (utc_offset == TZ_FAIL) {
        FUNC4(strm, "wrong timezeone");
        return STRM_NG;
      }
    }
  case 7:                       /* date (YYYY,MM,DD,hh,mm,ss,nsec) */
    tv.tv_usec = FUNC8(args[6])/1000;
  case 6:                       /* date (YYYY,MM,DD,hh,mm,ss) */
    tm.tm_sec = FUNC8(args[5]);
  case 5:                       /* date (YYYY,MM,DD,hh,mm) */
    tm.tm_min = FUNC8(args[4]);
  case 4:                       /* date (YYYY,MM,DD,hh) */
    tm.tm_year = FUNC8(args[0]);
    tm.tm_mon = FUNC8(args[1]);
    tm.tm_mday = FUNC8(args[2]);
    tm.tm_hour = FUNC8(args[3]);
    t = FUNC1(&tm);
    tv.tv_sec = t;
    if (argc == 8) {
      tv.tv_sec += FUNC11(1);
      tv.tv_sec -= utc_offset;
    }
    else {
      utc_offset = FUNC11(0);
    }
    return FUNC10(&tv, utc_offset, ret);
  default:
    FUNC4(strm, "wrong # of arguments");
    return STRM_NG;
  }
  FUNC0(&tv, NULL);
  return FUNC10(&tv, utc_offset, ret);
}