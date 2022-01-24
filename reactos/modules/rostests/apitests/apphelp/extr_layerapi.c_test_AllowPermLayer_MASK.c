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
typedef  scalar_t__ UINT ;

/* Variables and functions */
 scalar_t__ DRIVE_REMOTE ; 
 int FALSE ; 
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ WINVER_WIN8 ; 
 scalar_t__ g_WinVersion ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(void)
{
    char buf[20];
    char drive_letter;
    UINT drivetype = 0;
    FUNC1(FUNC2(NULL) == FALSE, "Expected AllowPermLayer to fail for NULL\n");
    if (g_WinVersion < WINVER_WIN8)
    {
        FUNC1(FUNC4("-:"), "Expected AllowPermLayer to succeed\n");
        FUNC1(FUNC4("@:"), "Expected AllowPermLayer to succeed\n");
        FUNC1(FUNC4("4:"), "Expected AllowPermLayer to succeed\n");
        FUNC1(FUNC4("*:"), "Expected AllowPermLayer to succeed\n");
    }
    FUNC1(FUNC4("*a") == FALSE, "Expected AllowPermLayer to fail\n");
    FUNC1(FUNC4("*\\") == FALSE, "Expected AllowPermLayer to fail\n");
    for (drive_letter = 'a'; drive_letter <= 'z'; ++drive_letter)
    {
        FUNC3(buf, "%c:\\", drive_letter);
        drivetype = FUNC0(buf);
        FUNC1(FUNC4(buf) == (drivetype != DRIVE_REMOTE), "Expected AllowPermLayer to be %d for %c:\\\n", (drivetype != DRIVE_REMOTE), drive_letter);
    }
}