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
struct monitor {int count; struct monitor* m; int /*<<< orphan*/  cond; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct monitor*) ; 
 int /*<<< orphan*/  FUNC3 (struct monitor) ; 

__attribute__((used)) static void
FUNC4(struct monitor *m) {
	int i;
	int n = m->count;
	for (i=0;i<n;i++) {
		FUNC3(m->m[i]);
	}
	FUNC1(&m->mutex);
	FUNC0(&m->cond);
	FUNC2(m->m);
	FUNC2(m);
}