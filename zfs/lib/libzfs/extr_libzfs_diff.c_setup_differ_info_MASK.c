#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_handle_t ;
struct TYPE_6__ {scalar_t__ cleanupfd; int /*<<< orphan*/ * zhp; } ;
typedef  TYPE_1__ differ_info_t ;

/* Variables and functions */
 int O_EXCL ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ZFS_DEV ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,char const*,char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(zfs_handle_t *zhp, const char *fromsnap,
    const char *tosnap, differ_info_t *di)
{
	di->zhp = zhp;

	di->cleanupfd = FUNC4(ZFS_DEV, O_RDWR|O_EXCL);
	FUNC0(di->cleanupfd >= 0);

	if (FUNC3(di, fromsnap, tosnap) != 0)
		return (-1);

	if (FUNC2(di) != 0)
		return (-1);

	if (FUNC1(di) != 0)
		return (-1);

	return (0);
}