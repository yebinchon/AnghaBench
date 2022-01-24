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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  pg_advisory_lock_int8 ; 

__attribute__((used)) static bool
FUNC5()
{
	FUNC0();
	/* Use the default sig handlers */
	FUNC1();

	FUNC4(WARNING, "Before lock job 6");

	/* no txn */
	FUNC2(pg_advisory_lock_int8, FUNC3(1));

	FUNC4(WARNING, "After lock job 5");
	return true;
}