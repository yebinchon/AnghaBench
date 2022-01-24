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
typedef  int /*<<< orphan*/  zpool_handle_t ;
struct TYPE_5__ {int /*<<< orphan*/  zfs_name; int /*<<< orphan*/  zfs_hdl; } ;
typedef  TYPE_1__ zfs_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,char*,int) ; 

__attribute__((used)) static zpool_handle_t *
FUNC6(zfs_handle_t *zhp)
{
	char *pool_name;
	int len;
	zpool_handle_t *zph;

	len = FUNC1(zhp->zfs_name, "/@#") + 1;
	pool_name = FUNC3(zhp->zfs_hdl, len);
	(void) FUNC2(pool_name, zhp->zfs_name, len);

	zph = FUNC5(zhp, pool_name, len);
	if (zph == NULL)
		zph = FUNC4(zhp, pool_name);

	FUNC0(pool_name);
	return (zph);
}