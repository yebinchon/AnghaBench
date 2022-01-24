#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  (* tsl_license_on_assign ) (char const*,void*) ;int /*<<< orphan*/  (* module_shutdown_hook ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  can_load ; 
 int /*<<< orphan*/  FUNC5 () ; 
 void* FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char const*,void*) ; 
 TYPE_1__* ts_cm_functions ; 
 int /*<<< orphan*/ * tsl_handle ; 
 int /*<<< orphan*/ * tsl_startup_fn ; 

void
FUNC9(const char *newval, void *extra)
{
	if (!can_load)
		return;

	FUNC0(newval != NULL);
	FUNC0(FUNC4(newval));
	if (FUNC3(newval))
	{
		FUNC0(FUNC5());
		FUNC0(extra == NULL);
		if (ts_cm_functions->module_shutdown_hook != NULL)
			ts_cm_functions->module_shutdown_hook();
		return;
	}

	FUNC0(tsl_handle != NULL);
	FUNC0(tsl_startup_fn != NULL);
	FUNC2(tsl_startup_fn, FUNC1(0));
#ifdef WIN32
	Assert(extra == NULL);
	extra = revalidate_license(newval);
#endif
	FUNC0(extra != NULL);
	ts_cm_functions->tsl_license_on_assign(newval, extra);
}