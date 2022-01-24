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
struct worker_parm {int id; int weight; struct monitor* m; } ;
struct skynet_monitor {int dummy; } ;
struct monitor {int /*<<< orphan*/  mutex; int /*<<< orphan*/  sleep; int /*<<< orphan*/  cond; int /*<<< orphan*/  quit; struct skynet_monitor** m; } ;
struct message_queue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  THREAD_WORKER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 struct message_queue* FUNC5 (struct skynet_monitor*,struct message_queue*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void *
FUNC7(void *p) {
	struct worker_parm *wp = p;
	int id = wp->id;
	int weight = wp->weight;
	struct monitor *m = wp->m;
	struct skynet_monitor *sm = m->m[id];
	FUNC6(THREAD_WORKER);
	struct message_queue * q = NULL;
	while (!m->quit) {
		q = FUNC5(sm, q, weight);
		if (q == NULL) {
			if (FUNC3(&m->mutex) == 0) {
				++ m->sleep;
				// "spurious wakeup" is harmless,
				// because skynet_context_message_dispatch() can be call at any time.
				if (!m->quit)
					FUNC2(&m->cond, &m->mutex);
				-- m->sleep;
				if (FUNC4(&m->mutex)) {
					FUNC1(stderr, "unlock mutex error");
					FUNC0(1);
				}
			}
		}
	}
	return NULL;
}