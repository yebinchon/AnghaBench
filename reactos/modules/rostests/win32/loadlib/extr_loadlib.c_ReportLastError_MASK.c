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
typedef  int /*<<< orphan*/ * PSTR ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int FORMAT_MESSAGE_ALLOCATE_BUFFER ; 
 int FORMAT_MESSAGE_FROM_SYSTEM ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  LANG_NEUTRAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUBLANG_DEFAULT ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,...) ; 

DWORD FUNC5(void)
{
    DWORD dwError = FUNC1();
    if (dwError != ERROR_SUCCESS) {
        PSTR msg = NULL;
        if (FUNC0(FORMAT_MESSAGE_ALLOCATE_BUFFER|FORMAT_MESSAGE_FROM_SYSTEM,
            0, dwError, FUNC3(LANG_NEUTRAL,SUBLANG_DEFAULT), (PSTR)&msg, 0, NULL)) {
            if (msg != NULL) {
                FUNC4("ReportLastError() %d - %s\n", dwError, msg);
            } else {
                FUNC4("ERROR: ReportLastError() %d - returned TRUE but with no msg string!\n", dwError);
            }
        } else {
            FUNC4("ReportLastError() %d - unknown error\n", dwError);
        }
        if (msg != NULL) {
            FUNC2(msg);
        }
    }
    return dwError;
}