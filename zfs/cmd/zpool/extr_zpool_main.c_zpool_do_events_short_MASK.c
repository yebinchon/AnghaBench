#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint_t ;
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  longlong_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_3__ {scalar_t__ scripted; } ;
typedef  TYPE_1__ ev_opts_t ;

/* Variables and functions */
 int /*<<< orphan*/  FM_CLASS ; 
 int /*<<< orphan*/  FM_EREPORT_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void
FUNC9(nvlist_t *nvl, ev_opts_t *opts)
{
	char ctime_str[26], str[32], *ptr;
	int64_t *tv;
	uint_t n;

	FUNC8(FUNC3(nvl, FM_EREPORT_TIME, &tv, &n) == 0);
	FUNC2(str, ' ', 32);
	(void) FUNC0((const time_t *)&tv[0], ctime_str);
	(void) FUNC7(str, ctime_str+4,  6);		/* 'Jun 30' */
	(void) FUNC7(str+7, ctime_str+20, 4);		/* '1993' */
	(void) FUNC7(str+12, ctime_str+11, 8);	/* '21:49:08' */
	(void) FUNC6(str+20, ".%09lld", (longlong_t)tv[1]); /* '.123456789' */
	if (opts->scripted)
		(void) FUNC5(FUNC1("%s\t"), str);
	else
		(void) FUNC5(FUNC1("%s "), str);

	FUNC8(FUNC4(nvl, FM_CLASS, &ptr) == 0);
	(void) FUNC5(FUNC1("%s\n"), ptr);
}