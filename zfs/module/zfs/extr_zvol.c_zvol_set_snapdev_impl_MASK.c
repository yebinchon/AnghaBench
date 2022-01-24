#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ zvol_snapdev_cb_arg_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  fstrans_cookie_t ;

/* Variables and functions */
 int /*<<< orphan*/  DS_FIND_SNAPSHOTS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zvol_set_snapdev_cb ; 

__attribute__((used)) static void
FUNC3(char *name, uint64_t snapdev)
{
	zvol_snapdev_cb_arg_t arg = {snapdev};
	fstrans_cookie_t cookie = FUNC1();
	/*
	 * The zvol_set_snapdev_sync() sets snapdev appropriately
	 * in the dataset hierarchy. Here, we only scan snapshots.
	 */
	FUNC0(name, zvol_set_snapdev_cb, &arg, DS_FIND_SNAPSHOTS);
	FUNC2(cookie);
}