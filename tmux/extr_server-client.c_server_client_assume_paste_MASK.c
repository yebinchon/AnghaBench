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
struct timeval {scalar_t__ tv_sec; int tv_usec; } ;
struct session {int flags; int /*<<< orphan*/  name; int /*<<< orphan*/  last_activity_time; int /*<<< orphan*/  activity_time; int /*<<< orphan*/  options; } ;

/* Variables and functions */
 int SESSION_PASTING ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 

__attribute__((used)) static int
FUNC3(struct session *s)
{
	struct timeval	tv;
	int		t;

	if ((t = FUNC1(s->options, "assume-paste-time")) == 0)
		return (0);

	FUNC2(&s->activity_time, &s->last_activity_time, &tv);
	if (tv.tv_sec == 0 && tv.tv_usec < t * 1000) {
		FUNC0("session %s pasting (flag %d)", s->name,
		    !!(s->flags & SESSION_PASTING));
		if (s->flags & SESSION_PASTING)
			return (1);
		s->flags |= SESSION_PASTING;
		return (0);
	}
	FUNC0("session %s not pasting", s->name);
	s->flags &= ~SESSION_PASTING;
	return (0);
}