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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  pg_advisory_lock_int8 ; 

__attribute__((used)) static bool
FUNC7()
{
	FUNC0();
	/* Use the default sig handlers */
	FUNC1();

	FUNC6(WARNING, "Before lock job 5");

	/* have to have a txn, otherwise can't kill the process */
	FUNC5();
	FUNC3(pg_advisory_lock_int8, FUNC4(1));
	FUNC2();

	FUNC6(WARNING, "After lock job 5");
	return true;
}