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
typedef  scalar_t__ time_t ;
struct tm {int /*<<< orphan*/  tm_isdst; void* tm_year; void* tm_mon; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  scalar_t__ l_timet ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_TTABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (struct tm*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct tm*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10 (lua_State *L) {
  time_t t;
  if (FUNC5(L, 1))  /* called without args? */
    t = FUNC9(NULL);  /* get current time */
  else {
    struct tm ts;
    FUNC3(L, 1, LUA_TTABLE);
    FUNC6(L, 1);  /* make sure table is at the top */
    ts.tm_sec = FUNC1(L, "sec", 0, 0);
    ts.tm_min = FUNC1(L, "min", 0, 0);
    ts.tm_hour = FUNC1(L, "hour", 12, 0);
    ts.tm_mday = FUNC1(L, "day", -1, 0);
    ts.tm_mon = FUNC1(L, "month", -1, 1);
    ts.tm_year = FUNC1(L, "year", -1, 1900);
    ts.tm_isdst = FUNC0(L, "isdst");
    t = FUNC7(&ts);
    FUNC8(L, &ts);  /* update fields with normalized values */
  }
  if (t != (time_t)(l_timet)t || t == (time_t)(-1))
    return FUNC4(L,
                  "time result cannot be represented in this installation");
  FUNC2(L, t);
  return 1;
}