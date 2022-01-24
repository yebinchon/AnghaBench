#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  refcount; } ;
struct TYPE_7__ {int /*<<< orphan*/  subtxnid; TYPE_2__* cache; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_1__ CachePin ;
typedef  TYPE_2__ Cache ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  pinned_caches ; 
 int /*<<< orphan*/  pinned_caches_mctx ; 

extern Cache *
FUNC4(Cache *cache)
{
	MemoryContext old = FUNC1(pinned_caches_mctx);
	CachePin *cp = FUNC3(sizeof(CachePin));

	cp->cache = cache;
	cp->subtxnid = FUNC0();
	pinned_caches = FUNC2(pinned_caches, cp);
	FUNC1(old);
	cache->refcount++;
	return cache;
}