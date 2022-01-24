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
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
#define  EXTENSION_STATE_CREATED 131 
#define  EXTENSION_STATE_NOT_INSTALLED 130 
#define  EXTENSION_STATE_TRANSITIONING 129 
#define  EXTENSION_STATE_UNKNOWN 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  extension_proxy_oid ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int extstate ; 

bool
FUNC3(Oid relid)
{
	static bool in_recursion = false;
	bool invalidate_all = false;

	/* Since the state of the extension is determined by the snapshot of the transaction there
	 * is no point processing recursive calls as the outer call will always set the correct state.
	 * This also prevents deep recursion during `AcceptInvalidationMessages`.
	 */
	if (in_recursion)
		return false;

	in_recursion = true;

	switch (extstate)
	{
		case EXTENSION_STATE_NOT_INSTALLED:
			/* This event may mean we just added the proxy table */
		case EXTENSION_STATE_UNKNOWN:
			/* Can we recompute the state now? */
		case EXTENSION_STATE_TRANSITIONING:
			/* Has the create/drop extension finished? */
			FUNC2();
			break;
		case EXTENSION_STATE_CREATED:

			/*
			 * Here we know the proxy table oid so only listen to potential
			 * drops on that oid. Note that an invalid oid passed in the
			 * invalidation event applies to all tables.
			 */
			if (extension_proxy_oid == relid || !FUNC0(relid))
			{
				FUNC2();
				if (EXTENSION_STATE_CREATED != extstate)
				{
					/*
					 * note this state may be UNKNOWN but should be
					 * conservative
					 */
					invalidate_all = true;
				}
			}
			break;
		default:
			FUNC1(ERROR, "unknown state: %d", extstate);
			break;
	}
	in_recursion = false;
	return invalidate_all;
}