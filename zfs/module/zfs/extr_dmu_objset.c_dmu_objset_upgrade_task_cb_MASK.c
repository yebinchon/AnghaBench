#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  os_upgrade_lock; scalar_t__ os_upgrade_id; scalar_t__ os_upgrade_exit; int /*<<< orphan*/  (* os_upgrade_cb ) (TYPE_1__*) ;int /*<<< orphan*/  os_upgrade_status; } ;
typedef  TYPE_1__ objset_t ;

/* Variables and functions */
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  EINTR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  upgrade_tag ; 

__attribute__((used)) static void
FUNC5(void *data)
{
	objset_t *os = data;

	FUNC2(&os->os_upgrade_lock);
	os->os_upgrade_status = EINTR;
	if (!os->os_upgrade_exit) {
		FUNC3(&os->os_upgrade_lock);

		os->os_upgrade_status = os->os_upgrade_cb(os);
		FUNC2(&os->os_upgrade_lock);
	}
	os->os_upgrade_exit = B_TRUE;
	os->os_upgrade_id = 0;
	FUNC3(&os->os_upgrade_lock);
	FUNC1(FUNC0(os), upgrade_tag);
}