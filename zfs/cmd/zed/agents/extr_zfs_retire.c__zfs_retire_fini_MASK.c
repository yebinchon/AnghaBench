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
struct TYPE_5__ {int /*<<< orphan*/  zrd_hdl; } ;
typedef  TYPE_1__ zfs_retire_data_t ;
typedef  int /*<<< orphan*/  fmd_hdl_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void
FUNC4(fmd_hdl_t *hdl)
{
	zfs_retire_data_t *zdp = FUNC1(hdl);

	if (zdp != NULL) {
		FUNC3(hdl, zdp);
		FUNC2(zdp->zrd_hdl);
		FUNC0(hdl, zdp, sizeof (zfs_retire_data_t));
	}
}