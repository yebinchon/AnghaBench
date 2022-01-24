#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sway_cursor {scalar_t__ hidden; TYPE_1__* seat; int /*<<< orphan*/  hide_source; } ;
struct TYPE_4__ {int /*<<< orphan*/  idle; } ;
struct TYPE_3__ {int /*<<< orphan*/  wlr_seat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sway_cursor*) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_cursor*) ; 
 TYPE_2__ server ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct sway_cursor *cursor) {
	FUNC2(
			cursor->hide_source, FUNC0(cursor));

	FUNC3(server.idle, cursor->seat->wlr_seat);
	if (cursor->hidden) {
		FUNC1(cursor);
	}
}