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
struct TYPE_6__ {int /*<<< orphan*/  zpool_name; int /*<<< orphan*/ * zpool_hdl; } ;
typedef  TYPE_1__ zpool_handle_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,scalar_t__*) ; 

int
FUNC4(libzfs_handle_t *hdl, const char *pool, zpool_handle_t **ret)
{
	zpool_handle_t *zhp;
	boolean_t missing;

	if ((zhp = FUNC1(hdl, sizeof (zpool_handle_t))) == NULL)
		return (-1);

	zhp->zpool_hdl = hdl;
	(void) FUNC0(zhp->zpool_name, pool, sizeof (zhp->zpool_name));

	if (FUNC3(zhp, &missing) != 0) {
		FUNC2(zhp);
		return (-1);
	}

	if (missing) {
		FUNC2(zhp);
		*ret = NULL;
		return (0);
	}

	*ret = zhp;
	return (0);
}