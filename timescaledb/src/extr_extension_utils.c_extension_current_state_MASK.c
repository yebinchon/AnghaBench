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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EXTENSION_STATE_CREATED ; 
 int EXTENSION_STATE_NOT_INSTALLED ; 
 int EXTENSION_STATE_TRANSITIONING ; 
 int EXTENSION_STATE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 

__attribute__((used)) static enum ExtensionState
FUNC6()
{
	/*
	 * NormalProcessingMode necessary to avoid accessing cache before its
	 * ready (which may result in an infinite loop). More concretely we need
	 * RelationCacheInitializePhase3 to have been already called.
	 */
	if (!FUNC1() || !FUNC2())
		return EXTENSION_STATE_UNKNOWN;

	/*
	 * NOTE: do not check for proxy_table_exists here. Want to be in
	 * TRANSITIONING state even before the proxy table is created
	 */
	if (FUNC4())
		return EXTENSION_STATE_TRANSITIONING;

	/*
	 * proxy_table_exists uses syscache. Must come first. NOTE: during DROP
	 * EXTENSION proxy_table_exists() will return false right away, while
	 * extension_exists will return true until the end of the command
	 */
	if (FUNC5())
	{
		FUNC0(FUNC3());
		return EXTENSION_STATE_CREATED;
	}

	return EXTENSION_STATE_NOT_INSTALLED;
}