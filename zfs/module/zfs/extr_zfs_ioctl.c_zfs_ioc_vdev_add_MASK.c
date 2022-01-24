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
struct TYPE_3__ {int /*<<< orphan*/  zc_iflags; int /*<<< orphan*/  zc_nvlist_conf_size; int /*<<< orphan*/  zc_nvlist_conf; int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(zfs_cmd_t *zc)
{
	spa_t *spa;
	int error;
	nvlist_t *config;

	error = FUNC3(zc->zc_name, &spa, FTAG);
	if (error != 0)
		return (error);

	error = FUNC0(zc->zc_nvlist_conf, zc->zc_nvlist_conf_size,
	    zc->zc_iflags, &config);
	if (error == 0) {
		error = FUNC4(spa, config);
		FUNC1(config);
	}
	FUNC2(spa, FTAG);
	return (error);
}