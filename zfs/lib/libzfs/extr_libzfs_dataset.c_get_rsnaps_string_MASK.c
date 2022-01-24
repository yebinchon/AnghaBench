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
struct TYPE_3__ {int /*<<< orphan*/  zfs_props; } ;
typedef  TYPE_1__ zfs_handle_t ;
typedef  scalar_t__ uint_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  ZFS_PROP_REDACT_SNAPS ; 
 int /*<<< orphan*/  ZPROP_VALUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__**,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(zfs_handle_t *zhp, char *propbuf, size_t proplen)
{
	nvlist_t *value;
	uint64_t *snaps;
	uint_t nsnaps;

	if (FUNC0(zhp->zfs_props,
	    FUNC4(ZFS_PROP_REDACT_SNAPS), &value) != 0)
		return (-1);
	if (FUNC1(value, ZPROP_VALUE, &snaps,
	    &nsnaps) != 0)
		return (-1);
	if (nsnaps == 0) {
		/* There's no redaction snapshots; pass a special value back */
		(void) FUNC2(propbuf, proplen, "none");
		return (0);
	}
	propbuf[0] = '\0';
	for (int i = 0; i < nsnaps; i++) {
		char buf[128];
		if (propbuf[0] != '\0')
			(void) FUNC3(propbuf, ",", proplen);
		(void) FUNC2(buf, sizeof (buf), "%llu",
		    (u_longlong_t)snaps[i]);
		(void) FUNC3(propbuf, buf, proplen);
	}

	return (0);
}