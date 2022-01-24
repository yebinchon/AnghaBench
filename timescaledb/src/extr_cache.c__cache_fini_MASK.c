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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cache_subxact_abort ; 
 int /*<<< orphan*/  cache_xact_end ; 
 int /*<<< orphan*/  pinned_caches ; 
 int /*<<< orphan*/ * pinned_caches_mctx ; 

void
FUNC3(void)
{
	FUNC0(pinned_caches_mctx);
	pinned_caches_mctx = NULL;
	pinned_caches = NIL;
	FUNC2(cache_xact_end, NULL);
	FUNC1(cache_subxact_abort, NULL);
}