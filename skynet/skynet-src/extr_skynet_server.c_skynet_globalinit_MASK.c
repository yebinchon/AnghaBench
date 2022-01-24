#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int init; int /*<<< orphan*/  handle_key; scalar_t__ monitor_exit; scalar_t__ total; } ;

/* Variables and functions */
 TYPE_1__ G_NODE ; 
 int /*<<< orphan*/  THREAD_MAIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

void 
FUNC4(void) {
	G_NODE.total = 0;
	G_NODE.monitor_exit = 0;
	G_NODE.init = 1;
	if (FUNC2(&G_NODE.handle_key, NULL)) {
		FUNC1(stderr, "pthread_key_create failed");
		FUNC0(1);
	}
	// set mainthread's key
	FUNC3(THREAD_MAIN);
}