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
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void
FUNC5(void)
{
    HANDLE hIcmp;

    FUNC3(0xDEADBEEF);
    hIcmp = FUNC2();
    FUNC4(hIcmp != INVALID_HANDLE_VALUE, "IcmpCreateFile failed unexpectedly: %lu\n", FUNC0());

    if (hIcmp != INVALID_HANDLE_VALUE)
        FUNC1(hIcmp);
}