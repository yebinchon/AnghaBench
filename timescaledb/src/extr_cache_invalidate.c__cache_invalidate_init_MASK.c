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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cache_invalidate_callback ; 
 int /*<<< orphan*/  cache_invalidate_subxact_end ; 
 int /*<<< orphan*/  cache_invalidate_xact_end ; 

void
FUNC4(void)
{
	FUNC3(cache_invalidate_xact_end, NULL);
	FUNC2(cache_invalidate_subxact_end, NULL);
	FUNC0(cache_invalidate_callback, FUNC1(NULL));
}