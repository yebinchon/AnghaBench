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
struct TYPE_4__ {scalar_t__ zc_nvlist_conf_size; scalar_t__ zc_nvlist_src_size; scalar_t__ zc_guid; scalar_t__ zc_nvlist_dst; int /*<<< orphan*/  zc_cookie; int /*<<< orphan*/  zc_name; int /*<<< orphan*/  zc_iflags; int /*<<< orphan*/  zc_nvlist_src; int /*<<< orphan*/  zc_nvlist_conf; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_GUID ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(zfs_cmd_t *zc)
{
	nvlist_t *config, *props = NULL;
	uint64_t guid;
	int error;

	if ((error = FUNC1(zc->zc_nvlist_conf, zc->zc_nvlist_conf_size,
	    zc->zc_iflags, &config)) != 0)
		return (error);

	if (zc->zc_nvlist_src_size != 0 && (error =
	    FUNC1(zc->zc_nvlist_src, zc->zc_nvlist_src_size,
	    zc->zc_iflags, &props))) {
		FUNC2(config);
		return (error);
	}

	if (FUNC3(config, ZPOOL_CONFIG_POOL_GUID, &guid) != 0 ||
	    guid != zc->zc_guid)
		error = FUNC0(EINVAL);
	else
		error = FUNC5(zc->zc_name, config, props, zc->zc_cookie);

	if (zc->zc_nvlist_dst != 0) {
		int err;

		if ((err = FUNC4(zc, config)) != 0)
			error = err;
	}

	FUNC2(config);
	FUNC2(props);

	return (error);
}