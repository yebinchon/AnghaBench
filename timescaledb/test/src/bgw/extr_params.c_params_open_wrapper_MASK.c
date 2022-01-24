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
typedef  int /*<<< orphan*/  dsm_segment ;
typedef  int /*<<< orphan*/  dsm_handle ;
typedef  int /*<<< orphan*/  TestParamsWrapper ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  ERROR ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static TestParamsWrapper *
FUNC10()
{
	dsm_segment *seg;
	dsm_handle handle = FUNC9();
	TestParamsWrapper *wrapper;

	seg = FUNC5(handle);
	if (seg == NULL)
	{
#if PG96
		bool started = IsTransactionState();

		if (!started)
			StartTransactionCommand();
#endif
		seg = FUNC4(handle);
		if (seg == NULL)
			FUNC8(ERROR, "got NULL segment in params_open_wrapper");
#if PG96
		dsm_pin_mapping(seg);
		if (!started)
			CommitTransactionCommand();
#endif
	}

	FUNC0(seg != NULL);

	wrapper = FUNC7(seg);

	FUNC0(wrapper != NULL);

	return wrapper;
}