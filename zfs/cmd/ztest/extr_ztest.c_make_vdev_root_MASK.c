#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  UMEM_NOFAIL ; 
 char const* VDEV_TYPE_ROOT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_ALLOCATION_BIAS ; 
 char* ZPOOL_CONFIG_CHILDREN ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_IS_LOG ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_TYPE ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*,char*,size_t,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/ ** FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int) ; 

__attribute__((used)) static nvlist_t *
FUNC11(char *path, char *aux, char *pool, size_t size, uint64_t ashift,
    const char *class, int r, int m, int t)
{
	nvlist_t *root, **child;
	int c;
	boolean_t log;

	FUNC0(t > 0);

	log = (class != NULL && FUNC8(class, "log") == 0);

	child = FUNC9(t * sizeof (nvlist_t *), UMEM_NOFAIL);

	for (c = 0; c < t; c++) {
		child[c] = FUNC2(path, aux, pool, size, ashift,
		    r, m);
		FUNC1(FUNC5(child[c], ZPOOL_CONFIG_IS_LOG,
		    log) == 0);

		if (class != NULL && class[0] != '\0') {
			FUNC0(m > 1 || log);   /* expecting a mirror */
			FUNC1(FUNC4(child[c],
			    ZPOOL_CONFIG_ALLOCATION_BIAS, class) == 0);
		}
	}

	FUNC1(FUNC6(&root, NV_UNIQUE_NAME, 0) == 0);
	FUNC1(FUNC4(root, ZPOOL_CONFIG_TYPE, VDEV_TYPE_ROOT) == 0);
	FUNC1(FUNC3(root, aux ? aux : ZPOOL_CONFIG_CHILDREN,
	    child, t) == 0);

	for (c = 0; c < t; c++)
		FUNC7(child[c]);

	FUNC10(child, t * sizeof (nvlist_t *));

	return (root);
}