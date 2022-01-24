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
struct winlink {int idx; } ;
struct session {int /*<<< orphan*/  windows; } ;

/* Variables and functions */
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct session*,struct winlink*,struct session*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct session*,struct winlink*) ; 
 struct winlink* FUNC2 (int /*<<< orphan*/ *,int) ; 

int
FUNC3(struct session *s, struct winlink *wl)
{
	int	 idx, last;

	if (wl == NULL)
		return (-1);
	idx = wl->idx + 1;

	/* Find the next free index. */
	for (last = idx; last < INT_MAX; last++) {
		if (FUNC2(&s->windows, last) == NULL)
			break;
	}
	if (last == INT_MAX)
		return (-1);

	/* Move everything from last - 1 to idx up a bit. */
	for (; last > idx; last--) {
		wl = FUNC2(&s->windows, last - 1);
		FUNC0(s, wl, s, last, 0, 0, NULL);
		FUNC1(s, wl);
	}

	return (idx);
}