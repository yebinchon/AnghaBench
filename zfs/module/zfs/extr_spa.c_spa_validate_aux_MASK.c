#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_5__ {int /*<<< orphan*/  spa_l2cache; int /*<<< orphan*/  spa_spares; } ;
typedef  TYPE_1__ spa_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RW_WRITER ; 
 scalar_t__ SCL_ALL ; 
 int /*<<< orphan*/  SPA_VERSION_L2CACHE ; 
 int /*<<< orphan*/  SPA_VERSION_SPARES ; 
 int /*<<< orphan*/  VDEV_LABEL_L2CACHE ; 
 int /*<<< orphan*/  VDEV_LABEL_SPARE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_L2CACHE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_SPARES ; 
 scalar_t__ FUNC1 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(spa_t *spa, nvlist_t *nvroot, uint64_t crtxg, int mode)
{
	int error;

	FUNC0(FUNC1(spa, SCL_ALL, RW_WRITER) == SCL_ALL);

	if ((error = FUNC2(spa, nvroot, crtxg, mode,
	    &spa->spa_spares, ZPOOL_CONFIG_SPARES, SPA_VERSION_SPARES,
	    VDEV_LABEL_SPARE)) != 0) {
		return (error);
	}

	return (FUNC2(spa, nvroot, crtxg, mode,
	    &spa->spa_l2cache, ZPOOL_CONFIG_L2CACHE, SPA_VERSION_L2CACHE,
	    VDEV_LABEL_L2CACHE));
}