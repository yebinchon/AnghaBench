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
typedef  int /*<<< orphan*/  zfs_zevent_t ;
struct TYPE_3__ {int /*<<< orphan*/  zc_cleanup_fd; int /*<<< orphan*/  zc_guid; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  minor_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(zfs_cmd_t *zc)
{
	zfs_zevent_t *ze;
	minor_t minor;
	int error;

	error = FUNC0(zc->zc_cleanup_fd, &minor, &ze);
	if (error != 0)
		return (error);

	error = FUNC2(ze, zc->zc_guid);
	FUNC1(zc->zc_cleanup_fd);

	return (error);
}