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
typedef  int /*<<< orphan*/  strm_state ;

/* Variables and functions */
 int /*<<< orphan*/ * ns_time ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  time_day ; 
 int /*<<< orphan*/  time_hour ; 
 int /*<<< orphan*/  time_min ; 
 int /*<<< orphan*/  time_minus ; 
 int /*<<< orphan*/  time_month ; 
 int /*<<< orphan*/  time_nanosec ; 
 int /*<<< orphan*/  time_now ; 
 int /*<<< orphan*/  time_num ; 
 int /*<<< orphan*/  time_plus ; 
 int /*<<< orphan*/  time_sec ; 
 int /*<<< orphan*/  time_str ; 
 int /*<<< orphan*/  time_time ; 
 int /*<<< orphan*/  time_weekday ; 
 int /*<<< orphan*/  time_year ; 

void
FUNC3(strm_state* state)
{
  FUNC2(state, "now", FUNC0(time_now));
  FUNC2(state, "time", FUNC0(time_time));

  ns_time = FUNC1(NULL, "time");
  FUNC2(ns_time, "+", FUNC0(time_plus));
  FUNC2(ns_time, "-", FUNC0(time_minus));
  FUNC2(ns_time, "string", FUNC0(time_str));
  FUNC2(ns_time, "number", FUNC0(time_num));
  FUNC2(ns_time, "year", FUNC0(time_year));
  FUNC2(ns_time, "month", FUNC0(time_month));
  FUNC2(ns_time, "day", FUNC0(time_day));
  FUNC2(ns_time, "hour", FUNC0(time_hour));
  FUNC2(ns_time, "minute", FUNC0(time_min));
  FUNC2(ns_time, "second", FUNC0(time_sec));
  FUNC2(ns_time, "nanosecond", FUNC0(time_nanosec));
  FUNC2(ns_time, "weekday", FUNC0(time_weekday));
}