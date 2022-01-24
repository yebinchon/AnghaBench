#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zpool_handle_t ;
struct TYPE_2__ {int vs_state; } ;
typedef  TYPE_1__ vdev_stat_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_STATS ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_TREE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(zpool_handle_t *zhp)
{
	nvlist_t *nvroot;
	vdev_stat_t *vs;
	unsigned int c;

	FUNC2(FUNC0(FUNC3(zhp, NULL),
	    ZPOOL_CONFIG_VDEV_TREE, &nvroot) == 0);
	FUNC2(FUNC1(nvroot, ZPOOL_CONFIG_VDEV_STATS,
	    (uint64_t **)&vs, &c) == 0);
	return (vs->vs_state);
}