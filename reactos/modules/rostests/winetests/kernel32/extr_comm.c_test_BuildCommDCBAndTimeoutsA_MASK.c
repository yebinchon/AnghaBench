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
typedef  int /*<<< orphan*/  TEST ;
typedef  int /*<<< orphan*/  DCB ;
typedef  int /*<<< orphan*/  COMMTIMEOUTS ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC6(const char *string, const TEST *ptest, int initial_value, const DCB *pexpected_dcb, const COMMTIMEOUTS *pexpected_timeouts)
{
	BOOL result;
	DCB dcb;
	COMMTIMEOUTS timeouts;

	/* set initial conditions */
	FUNC5(&dcb, initial_value, sizeof(DCB));
	FUNC5(&timeouts, initial_value, sizeof(COMMTIMEOUTS));
	FUNC1(0xdeadbeef);

	result = FUNC0(string, &dcb, &timeouts);

	/* check results */
	FUNC3("BuildCommDCBAndTimeoutsA", ptest, initial_value, result);
	FUNC2("BuildCommDCBAndTimeoutsA", ptest, initial_value, &dcb, pexpected_dcb);
	FUNC4("BuildCommDCBAndTimeoutsA", ptest, initial_value, &timeouts, pexpected_timeouts);
}