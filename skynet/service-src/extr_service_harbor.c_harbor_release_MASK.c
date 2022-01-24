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
struct slave {scalar_t__ status; scalar_t__ fd; } ;
struct harbor {int /*<<< orphan*/  map; struct slave* s; } ;

/* Variables and functions */
 int REMOTE_MAX ; 
 scalar_t__ STATUS_DOWN ; 
 int /*<<< orphan*/  FUNC0 (struct harbor*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct harbor*) ; 

void
FUNC3(struct harbor *h) {
	int i;
	for (i=1;i<REMOTE_MAX;i++) {
		struct slave *s = &h->s[i];
		if (s->fd && s->status != STATUS_DOWN) {
			FUNC0(h,i);
			// don't call report_harbor_down.
			// never call skynet_send during module exit, because of dead lock
		}
	}
	FUNC1(h->map);
	FUNC2(h);
}