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
typedef  int XactEvent ;

/* Variables and functions */
#define  XACT_EVENT_ABORT 130 
#define  XACT_EVENT_PARALLEL_ABORT 129 
#define  XACT_EVENT_PRE_COMMIT 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  continuous_aggs_cache_inval_htab ; 

__attribute__((used)) static void
FUNC2(XactEvent event, void *arg)
{
	/* Return quickly if we never initialize the hashtable */
	if (!continuous_aggs_cache_inval_htab)
		return;

	switch (event)
	{
		case XACT_EVENT_PRE_COMMIT:
			FUNC1();
			FUNC0();
			break;
		case XACT_EVENT_ABORT:
		case XACT_EVENT_PARALLEL_ABORT:
			FUNC0();
			break;
		default:
			break;
	}
}