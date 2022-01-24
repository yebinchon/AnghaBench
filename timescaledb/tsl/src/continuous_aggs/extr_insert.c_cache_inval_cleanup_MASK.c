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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * continuous_aggs_cache_inval_htab ; 
 int /*<<< orphan*/ * continuous_aggs_trigger_mctx ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(void)
{
	FUNC0(continuous_aggs_cache_inval_htab != NULL);
	FUNC2(continuous_aggs_cache_inval_htab);
	FUNC1(continuous_aggs_trigger_mctx);

	continuous_aggs_cache_inval_htab = NULL;
	continuous_aggs_trigger_mctx = NULL;
}