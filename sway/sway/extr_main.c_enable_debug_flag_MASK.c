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
struct TYPE_4__ {int noatomic; int txn_wait; int txn_timings; int /*<<< orphan*/  damage; } ;
struct TYPE_3__ {int /*<<< orphan*/  txn_timeout_ms; } ;

/* Variables and functions */
 int /*<<< orphan*/  DAMAGE_HIGHLIGHT ; 
 int /*<<< orphan*/  DAMAGE_RERENDER ; 
 int /*<<< orphan*/  SWAY_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 TYPE_2__ debug ; 
 TYPE_1__ server ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 

void FUNC4(const char *flag) {
	if (FUNC1(flag, "damage=highlight") == 0) {
		debug.damage = DAMAGE_HIGHLIGHT;
	} else if (FUNC1(flag, "damage=rerender") == 0) {
		debug.damage = DAMAGE_RERENDER;
	} else if (FUNC1(flag, "noatomic") == 0) {
		debug.noatomic = true;
	} else if (FUNC1(flag, "txn-wait") == 0) {
		debug.txn_wait = true;
	} else if (FUNC1(flag, "txn-timings") == 0) {
		debug.txn_timings = true;
	} else if (FUNC2(flag, "txn-timeout=", 12) == 0) {
		server.txn_timeout_ms = FUNC0(&flag[12]);
	} else {
		FUNC3(SWAY_ERROR, "Unknown debug flag: %s", flag);
	}
}