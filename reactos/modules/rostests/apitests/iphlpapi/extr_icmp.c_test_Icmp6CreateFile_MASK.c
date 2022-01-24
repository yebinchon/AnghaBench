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
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static
void
FUNC6(void)
{
    HANDLE hIcmp;

    FUNC3(0xDEADBEEF);
    hIcmp = FUNC1();

    if (FUNC0() == ERROR_FILE_NOT_FOUND)
    {
        /* On Windows Server 2003, the IPv6 protocol must be installed. */
        FUNC5("IPv6 is not available.\n");
        return;
    }

    FUNC4(hIcmp != INVALID_HANDLE_VALUE, "Icmp6CreateFile failed unexpectedly: %lu\n", FUNC0());

    if (hIcmp != INVALID_HANDLE_VALUE)
        FUNC2(hIcmp);
}