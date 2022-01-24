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
 int /*<<< orphan*/  CSIDL_COMMON_PROGRAMS ; 
 int /*<<< orphan*/  CSIDL_PROGRAMS ; 
 int /*<<< orphan*/  FALSE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  ProgramsDir ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 () ; 

__attribute__((used)) static void FUNC3(void)
{
    char commonprograms[MAX_PATH];
    char programs[MAX_PATH];

    FUNC0(NULL, programs, CSIDL_PROGRAMS, FALSE);
    FUNC0(NULL, commonprograms, CSIDL_COMMON_PROGRAMS, FALSE);

    /* ProgramsDir on Vista+ is always the users one (CSIDL_PROGRAMS). Before Vista
     * it depends on whether the user is an administrator (CSIDL_COMMON_PROGRAMS) or
     * not (CSIDL_PROGRAMS).
     */
    if (FUNC2())
        FUNC1(ProgramsDir, commonprograms);
    else
        FUNC1(ProgramsDir, programs);
}