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
struct TYPE_4__ {int /*<<< orphan*/  zc_iflags; int /*<<< orphan*/  zc_nvlist_conf_size; int /*<<< orphan*/  zc_nvlist_conf; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(zfs_cmd_t *zc)
{
	nvlist_t *tryconfig, *config = NULL;
	int error;

	if ((error = FUNC1(zc->zc_nvlist_conf, zc->zc_nvlist_conf_size,
	    zc->zc_iflags, &tryconfig)) != 0)
		return (error);

	config = FUNC4(tryconfig);

	FUNC2(tryconfig);

	if (config == NULL)
		return (FUNC0(EINVAL));

	error = FUNC3(zc, config);
	FUNC2(config);

	return (error);
}