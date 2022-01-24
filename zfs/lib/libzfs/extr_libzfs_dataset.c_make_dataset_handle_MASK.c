#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  zfs_name; int /*<<< orphan*/ * zfs_hdl; } ;
typedef  TYPE_1__ zfs_handle_t ;
struct TYPE_13__ {char* member_0; } ;
typedef  TYPE_2__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC3 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

zfs_handle_t *
FUNC7(libzfs_handle_t *hdl, const char *path)
{
	zfs_cmd_t zc = {"\0"};

	zfs_handle_t *zhp = FUNC0(1, sizeof (zfs_handle_t));

	if (zhp == NULL)
		return (NULL);

	zhp->zfs_hdl = hdl;
	(void) FUNC4(zhp->zfs_name, path, sizeof (zhp->zfs_name));
	if (FUNC5(hdl, &zc, 0) != 0) {
		FUNC1(zhp);
		return (NULL);
	}
	if (FUNC2(zhp, &zc) == -1) {
		FUNC6(&zc);
		FUNC1(zhp);
		return (NULL);
	}
	if (FUNC3(zhp, &zc) == -1) {
		FUNC1(zhp);
		zhp = NULL;
	}
	FUNC6(&zc);
	return (zhp);
}