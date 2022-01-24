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
typedef  size_t uint_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  scalar_t__ diskaddr_t ;

/* Variables and functions */
 scalar_t__ MAXOFFSET_T ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_CHILDREN ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_WHOLE_DISK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ***,size_t*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__*) ; 

__attribute__((used)) static diskaddr_t
FUNC3(nvlist_t *config)
{
	nvlist_t **child;
	uint_t c, children;
	diskaddr_t sb = MAXOFFSET_T;
	uint64_t wholedisk;

	if (FUNC0(config,
	    ZPOOL_CONFIG_CHILDREN, &child, &children) != 0) {
		if (FUNC1(config,
		    ZPOOL_CONFIG_WHOLE_DISK,
		    &wholedisk) != 0 || !wholedisk) {
			return (MAXOFFSET_T);
		}
		if (FUNC2(config, &sb) < 0)
			sb = MAXOFFSET_T;
		return (sb);
	}

	for (c = 0; c < children; c++) {
		sb = FUNC3(child[c]);
		if (sb != MAXOFFSET_T) {
			return (sb);
		}
	}
	return (MAXOFFSET_T);
}