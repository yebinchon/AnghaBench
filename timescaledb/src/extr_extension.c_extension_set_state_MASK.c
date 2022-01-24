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
typedef  enum ExtensionState { ____Placeholder_ExtensionState } ExtensionState ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_SCHEMA_NAME ; 
 int /*<<< orphan*/  EXTENSION_PROXY_TABLE ; 
#define  EXTENSION_STATE_CREATED 131 
#define  EXTENSION_STATE_NOT_INSTALLED 130 
#define  EXTENSION_STATE_TRANSITIONING 129 
#define  EXTENSION_STATE_UNKNOWN 128 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  TIMESCALEDB_VERSION_MOD ; 
 int /*<<< orphan*/  extension_proxy_oid ; 
 int extstate ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC4(enum ExtensionState newstate)
{
	if (newstate == extstate)
	{
		return false;
	}
	switch (newstate)
	{
		case EXTENSION_STATE_TRANSITIONING:
		case EXTENSION_STATE_UNKNOWN:
			break;
		case EXTENSION_STATE_CREATED:
			FUNC3(TIMESCALEDB_VERSION_MOD);
			extension_proxy_oid = FUNC1(EXTENSION_PROXY_TABLE,
													FUNC0(CACHE_SCHEMA_NAME, false));
			FUNC2();
			break;
		case EXTENSION_STATE_NOT_INSTALLED:
			extension_proxy_oid = InvalidOid;
			FUNC2();
			break;
	}
	extstate = newstate;
	return true;
}