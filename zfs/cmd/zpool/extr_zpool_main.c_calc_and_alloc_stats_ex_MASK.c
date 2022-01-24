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
struct stat_array {int count; scalar_t__* data; } ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_STATS_EX ; 
 int /*<<< orphan*/  FUNC0 (struct stat_array*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__*,unsigned int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*,struct stat_array*) ; 
 void* FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static struct stat_array *
FUNC6(const char **names, unsigned int len, nvlist_t *oldnv,
    nvlist_t *newnv)
{
	nvlist_t *oldnvx = NULL, *newnvx;
	struct stat_array *oldnva, *newnva, *calcnva;
	int i, j;
	unsigned int alloc_size = (sizeof (struct stat_array)) * len;

	/* Extract our extended stats nvlist from the main list */
	FUNC5(FUNC2(newnv, ZPOOL_CONFIG_VDEV_STATS_EX,
	    &newnvx) == 0);
	if (oldnv) {
		FUNC5(FUNC2(oldnv, ZPOOL_CONFIG_VDEV_STATS_EX,
		    &oldnvx) == 0);
	}

	newnva = FUNC4(alloc_size);
	oldnva = FUNC4(alloc_size);
	calcnva = FUNC4(alloc_size);

	for (j = 0; j < len; j++) {
		FUNC5(FUNC3(newnvx, names[j],
		    &newnva[j]) == 0);
		calcnva[j].count = newnva[j].count;
		alloc_size = calcnva[j].count * sizeof (calcnva[j].data[0]);
		calcnva[j].data = FUNC4(alloc_size);
		FUNC1(calcnva[j].data, newnva[j].data, alloc_size);

		if (oldnvx) {
			FUNC5(FUNC3(oldnvx, names[j],
			    &oldnva[j]) == 0);
			for (i = 0; i < oldnva[j].count; i++)
				calcnva[j].data[i] -= oldnva[j].data[i];
		}
	}
	FUNC0(newnva);
	FUNC0(oldnva);
	return (calcnva);
}