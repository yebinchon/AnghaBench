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

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CacheMemoryContext ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  pinned_caches ; 
 int /*<<< orphan*/ * pinned_caches_mctx ; 

__attribute__((used)) static void
FUNC2(void)
{
	if (NULL != pinned_caches_mctx)
		FUNC1(pinned_caches_mctx);

	pinned_caches_mctx =
		FUNC0(CacheMemoryContext, "Cache pins", ALLOCSET_DEFAULT_SIZES);

	pinned_caches = NIL;
}