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
typedef  int /*<<< orphan*/  zfs_iter_f ;
typedef  int /*<<< orphan*/  zfs_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC2(zfs_handle_t *zhp, zfs_iter_f func, void *data)
{
	int ret;

	if ((ret = FUNC1(zhp, B_FALSE, func, data, 0, 0)) != 0)
		return (ret);

	return (FUNC0(zhp, func, data));
}