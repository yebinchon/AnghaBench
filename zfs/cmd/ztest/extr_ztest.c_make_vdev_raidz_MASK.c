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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_2__ {int /*<<< orphan*/  zo_raidz_parity; } ;

/* Variables and functions */
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  UMEM_NOFAIL ; 
 int /*<<< orphan*/  VDEV_TYPE_RAIDZ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_CHILDREN ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_NPARITY ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_TYPE ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*,char*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int) ; 
 TYPE_1__ ztest_opts ; 

__attribute__((used)) static nvlist_t *
FUNC9(char *path, char *aux, char *pool, size_t size,
    uint64_t ashift, int r)
{
	nvlist_t *raidz, **child;
	int c;

	if (r < 2)
		return (FUNC1(path, aux, pool, size, ashift));
	child = FUNC7(r * sizeof (nvlist_t *), UMEM_NOFAIL);

	for (c = 0; c < r; c++)
		child[c] = FUNC1(path, aux, pool, size, ashift);

	FUNC0(FUNC5(&raidz, NV_UNIQUE_NAME, 0) == 0);
	FUNC0(FUNC3(raidz, ZPOOL_CONFIG_TYPE,
	    VDEV_TYPE_RAIDZ) == 0);
	FUNC0(FUNC4(raidz, ZPOOL_CONFIG_NPARITY,
	    ztest_opts.zo_raidz_parity) == 0);
	FUNC0(FUNC2(raidz, ZPOOL_CONFIG_CHILDREN,
	    child, r) == 0);

	for (c = 0; c < r; c++)
		FUNC6(child[c]);

	FUNC8(child, r * sizeof (nvlist_t *));

	return (raidz);
}