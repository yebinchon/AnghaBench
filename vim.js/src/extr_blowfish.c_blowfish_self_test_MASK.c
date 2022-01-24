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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FAIL ; 
 int OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 

int
FUNC4()
{
    if (FUNC3() == FAIL)
    {
	FUNC0(FUNC1("E818: sha256 test failed"));
	return FAIL;
    }
    if (FUNC2() == FAIL)
    {
	FUNC0(FUNC1("E819: Blowfish test failed"));
	return FAIL;
    }
    return OK;
}