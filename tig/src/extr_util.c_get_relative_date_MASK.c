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
typedef  scalar_t__ time_t ;
struct timeval {scalar_t__ tv_sec; } ;
struct time {scalar_t__ sec; scalar_t__ tz; } ;
struct TYPE_3__ {scalar_t__ interval; scalar_t__ in_seconds; int /*<<< orphan*/  name; int /*<<< orphan*/  compact_symbol; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* reldate ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,int /*<<< orphan*/ *,char*,scalar_t__,scalar_t__,char*,...) ; 
 scalar_t__ FUNC2 (struct timeval*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *
FUNC3(const struct time *time, char *buf, size_t buflen, bool compact)
{
	struct timeval now;
	time_t timestamp = time->sec + time->tz;
	time_t seconds;
	int i;

	if (FUNC2(&now, NULL))
		return "";

	seconds = now.tv_sec < timestamp ? timestamp - now.tv_sec : now.tv_sec - timestamp;

	for (i = 0; i < FUNC0(reldate); i++) {
		if (seconds >= reldate[i].interval && reldate[i].interval)
			continue;

		seconds /= reldate[i].in_seconds;
		if (compact) {
			if (!FUNC1(buf, buflen, NULL, "%s%ld%c",
				    now.tv_sec >= timestamp ? "" : "-",
				    seconds, reldate[i].compact_symbol))
				return "";

		} else if (!FUNC1(buf, buflen, NULL, "%ld %s%s %s",
				    seconds, reldate[i].name,
				    seconds > 1 ? "s" : "",
				    now.tv_sec >= timestamp ? "ago" : "ahead"))
			return "";

		return buf;
	}

	return "";
}