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
struct TYPE_3__ {scalar_t__ zc_nvlist_dst; int /*<<< orphan*/  zc_nvlist_dst_size; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC2(libzfs_handle_t *hdl, zfs_cmd_t *zc)
{
	FUNC0((void *)(uintptr_t)zc->zc_nvlist_dst);
	zc->zc_nvlist_dst =
	    (uint64_t)(uintptr_t)FUNC1(hdl, zc->zc_nvlist_dst_size);
	if (zc->zc_nvlist_dst == 0)
		return (-1);

	return (0);
}