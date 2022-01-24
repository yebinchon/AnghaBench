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
struct swaybar_watcher {struct swaybar_watcher* interface; int /*<<< orphan*/  items; int /*<<< orphan*/  hosts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct swaybar_watcher*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct swaybar_watcher *watcher) {
	if (!watcher) {
		return;
	}
	FUNC1(watcher->hosts);
	FUNC1(watcher->items);
	FUNC0(watcher->interface);
	FUNC0(watcher);
}