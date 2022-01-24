#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  znode_t ;
struct TYPE_5__ {int /*<<< orphan*/  zgd_lr; scalar_t__ zgd_db; int /*<<< orphan*/ * zgd_private; } ;
typedef  TYPE_1__ zgd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(zgd_t *zgd, int error)
{
	znode_t *zp = zgd->zgd_private;

	if (zgd->zgd_db)
		FUNC1(zgd->zgd_db, zgd);

	FUNC4(zgd->zgd_lr);

	/*
	 * Release the vnode asynchronously as we currently have the
	 * txg stopped from syncing.
	 */
	FUNC3(FUNC0(zp));

	FUNC2(zgd, sizeof (zgd_t));
}