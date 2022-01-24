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
typedef  int /*<<< orphan*/  zfs_zevent_t ;
struct TYPE_4__ {int zc_guid; int /*<<< orphan*/  zc_cleanup_fd; int /*<<< orphan*/  zc_cookie; int /*<<< orphan*/  zc_nvlist_dst_size; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  minor_t ;

/* Variables and functions */
 int ENOENT ; 
 int ZEVENT_NONBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(zfs_cmd_t *zc)
{
	zfs_zevent_t *ze;
	nvlist_t *event = NULL;
	minor_t minor;
	uint64_t dropped = 0;
	int error;

	error = FUNC2(zc->zc_cleanup_fd, &minor, &ze);
	if (error != 0)
		return (error);

	do {
		error = FUNC4(ze, &event,
		    &zc->zc_nvlist_dst_size, &dropped);
		if (event != NULL) {
			zc->zc_cookie = dropped;
			error = FUNC1(zc, event);
			FUNC0(event);
		}

		if (zc->zc_guid & ZEVENT_NONBLOCK)
			break;

		if ((error == 0) || (error != ENOENT))
			break;

		error = FUNC5(ze);
		if (error != 0)
			break;
	} while (1);

	FUNC3(zc->zc_cleanup_fd);

	return (error);
}