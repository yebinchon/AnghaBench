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
typedef  int /*<<< orphan*/  tsdn_t ;
struct TYPE_4__ {scalar_t__ prof_accumbytes; int /*<<< orphan*/ * arena; } ;
typedef  TYPE_1__ tcache_t ;
typedef  int /*<<< orphan*/  szind_t ;
typedef  int /*<<< orphan*/  cache_bin_t ;
typedef  int /*<<< orphan*/  arena_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ config_prof ; 

void *
FUNC3(tsdn_t *tsdn, arena_t *arena, tcache_t *tcache,
    cache_bin_t *tbin, szind_t binind, bool *tcache_success) {
	void *ret;

	FUNC1(tcache->arena != NULL);
	FUNC0(tsdn, arena, tcache, tbin, binind,
	    config_prof ? tcache->prof_accumbytes : 0);
	if (config_prof) {
		tcache->prof_accumbytes = 0;
	}
	ret = FUNC2(tbin, tcache_success);

	return ret;
}