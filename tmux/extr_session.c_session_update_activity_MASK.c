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
struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct session {scalar_t__ attached; int /*<<< orphan*/  lock_timer; int /*<<< orphan*/  options; struct timeval activity_time; int /*<<< orphan*/  name; int /*<<< orphan*/  id; struct timeval last_activity_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct session*) ; 
 int /*<<< orphan*/  FUNC4 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long long,int,long long,int) ; 
 int /*<<< orphan*/  FUNC6 (struct timeval*,struct timeval*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  session_lock_timer ; 
 int /*<<< orphan*/  FUNC8 (struct timeval*) ; 

void
FUNC9(struct session *s, struct timeval *from)
{
	struct timeval	*last = &s->last_activity_time;
	struct timeval	 tv;

	FUNC6(last, &s->activity_time, sizeof *last);
	if (from == NULL)
		FUNC4(&s->activity_time, NULL);
	else
		FUNC6(&s->activity_time, from, sizeof s->activity_time);

	FUNC5("session $%u %s activity %lld.%06d (last %lld.%06d)", s->id,
	    s->name, (long long)s->activity_time.tv_sec,
	    (int)s->activity_time.tv_usec, (long long)last->tv_sec,
	    (int)last->tv_usec);

	if (FUNC2(&s->lock_timer))
		FUNC1(&s->lock_timer);
	else
		FUNC3(&s->lock_timer, session_lock_timer, s);

	if (s->attached != 0) {
		FUNC8(&tv);
		tv.tv_sec = FUNC7(s->options, "lock-after-time");
		if (tv.tv_sec != 0)
			FUNC0(&s->lock_timer, &tv);
	}
}