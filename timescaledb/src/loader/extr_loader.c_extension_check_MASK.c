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
#define  EXTENSION_STATE_CREATED 131 
#define  EXTENSION_STATE_NOT_INSTALLED 130 
#define  EXTENSION_STATE_TRANSITIONING 129 
#define  EXTENSION_STATE_UNKNOWN 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  loaded ; 

__attribute__((used)) static void inline FUNC2()
{
	if (!loaded)
	{
		enum ExtensionState state = FUNC1();

		switch (state)
		{
			case EXTENSION_STATE_TRANSITIONING:

				/*
				 * Always load as soon as the extension is transitioning. This
				 * is necessary so that the extension load before any CREATE
				 * FUNCTION calls. Otherwise, the CREATE FUNCTION calls will
				 * load the .so without capturing the post_parse_analyze_hook.
				 */
			case EXTENSION_STATE_CREATED:
				FUNC0();
				return;
			case EXTENSION_STATE_UNKNOWN:
			case EXTENSION_STATE_NOT_INSTALLED:
				return;
		}
	}
}