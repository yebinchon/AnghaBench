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
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 scalar_t__ ERROR_INTERNET_EXTENDED_ERROR ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,char*) ; 

__attribute__((used)) static void FUNC6(DWORD error)
{
    DWORD code, buflen = 0;

    if (error != ERROR_INTERNET_EXTENDED_ERROR) return;
    if (!FUNC4(&code, NULL, &buflen) && FUNC0() == ERROR_INSUFFICIENT_BUFFER)
    {
        char *text = FUNC2(FUNC1(), 0, ++buflen);
        FUNC4(&code, text, &buflen);
        FUNC5("%u %s\n", code, text);
        FUNC3(FUNC1(), 0, text);
    }
}