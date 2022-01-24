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
struct tm {int /*<<< orphan*/  tm_isdst; scalar_t__ tm_yday; scalar_t__ tm_wday; scalar_t__ tm_year; scalar_t__ tm_mon; scalar_t__ tm_mday; scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC2 (lua_State *L, struct tm *stm) {
  FUNC1(L, "sec", stm->tm_sec);
  FUNC1(L, "min", stm->tm_min);
  FUNC1(L, "hour", stm->tm_hour);
  FUNC1(L, "day", stm->tm_mday);
  FUNC1(L, "month", stm->tm_mon + 1);
  FUNC1(L, "year", stm->tm_year + 1900);
  FUNC1(L, "wday", stm->tm_wday + 1);
  FUNC1(L, "yday", stm->tm_yday + 1);
  FUNC0(L, "isdst", stm->tm_isdst);
}