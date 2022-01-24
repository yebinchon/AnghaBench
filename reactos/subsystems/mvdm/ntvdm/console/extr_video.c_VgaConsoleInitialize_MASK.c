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
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  ConsoleInfo ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OrgConsoleBufferInfo ; 
 int /*<<< orphan*/  OrgConsoleCursorInfo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * TextConsoleBuffer ; 

BOOLEAN FUNC4(HANDLE TextHandle)
{
    /*
     * Initialize the console video by saving the default
     * text-mode console output handle, if it is valid.
     */
    if (!FUNC2(TextHandle)) return FALSE;
    TextConsoleBuffer = TextHandle;

    /* Save the original cursor and console screen buffer information */
    if (!FUNC0(TextConsoleBuffer, &OrgConsoleCursorInfo) ||
        !FUNC1(TextConsoleBuffer, &OrgConsoleBufferInfo))
    {
        TextConsoleBuffer = NULL;
        return FALSE;
    }
    ConsoleInfo = OrgConsoleBufferInfo;

    /* Switch to the text buffer, but do not enter into a text mode */
    FUNC3(TextConsoleBuffer);

    return TRUE;
}