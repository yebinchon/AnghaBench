#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_4__ {scalar_t__ ServerEvent; scalar_t__ ProcessHandle; scalar_t__ CurDirsLength; struct TYPE_4__* CurrentDirs; } ;
typedef  TYPE_1__* PVDM_CONSOLE_RECORD ;

/* Variables and functions */
 int /*<<< orphan*/  BaseSrvHeap ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

VOID FUNC2(PVDM_CONSOLE_RECORD ConsoleRecord)
{
    if (ConsoleRecord->CurrentDirs != NULL)
    {
        /* Free the current directories */
        FUNC1(BaseSrvHeap, 0, ConsoleRecord->CurrentDirs);
        ConsoleRecord->CurrentDirs = NULL;
        ConsoleRecord->CurDirsLength = 0;
    }

    /* Close the process handle */
    if (ConsoleRecord->ProcessHandle)
        FUNC0(ConsoleRecord->ProcessHandle);

    /* Close the event handle */
    if (ConsoleRecord->ServerEvent)
        FUNC0(ConsoleRecord->ServerEvent);

    /* Remove the console record */
    // RemoveEntryList(&ConsoleRecord->Entry);
    FUNC1(BaseSrvHeap, 0, ConsoleRecord);

}