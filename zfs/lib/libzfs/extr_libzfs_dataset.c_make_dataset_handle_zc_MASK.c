#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  zfs_name; int /*<<< orphan*/ * zfs_hdl; } ;
typedef  TYPE_1__ zfs_handle_t ;
struct TYPE_10__ {int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_2__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

zfs_handle_t *
FUNC4(libzfs_handle_t *hdl, zfs_cmd_t *zc)
{
	zfs_handle_t *zhp = FUNC0(1, sizeof (zfs_handle_t));

	if (zhp == NULL)
		return (NULL);

	zhp->zfs_hdl = hdl;
	(void) FUNC3(zhp->zfs_name, zc->zc_name, sizeof (zhp->zfs_name));
	if (FUNC2(zhp, zc) == -1) {
		FUNC1(zhp);
		return (NULL);
	}
	return (zhp);
}