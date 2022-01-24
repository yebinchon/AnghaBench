#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  ReferenceCount; TYPE_2__* NotifiedLastCloseProcess; void* NotifyLastClose; } ;
struct TYPE_13__ {int /*<<< orphan*/  ConsoleLink; int /*<<< orphan*/ * ConsoleHandle; TYPE_1__* Process; void* ConsoleApp; } ;
struct TYPE_12__ {int /*<<< orphan*/  Flags; } ;
typedef  TYPE_2__* PCONSOLE_PROCESS_DATA ;
typedef  TYPE_3__* PCONSOLE ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  CONSOLE_RUNNING ; 
 int /*<<< orphan*/  CTRL_LAST_CLOSE_EVENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CsrProcessIsConsoleApp ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 void* FALSE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  STATUS_UNSUCCESSFUL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 

NTSTATUS
FUNC8(PCONSOLE_PROCESS_DATA ProcessData)
{
    PCONSOLE Console;
    PCONSOLE_PROCESS_DATA ConsoleLeaderProcess;

    FUNC5("ConSrvRemoveConsole\n");

    /* Mark the process as not having a console anymore */
    ProcessData->ConsoleApp = FALSE;
    ProcessData->Process->Flags &= ~CsrProcessIsConsoleApp;

    /* Validate and lock the console */
    if (!FUNC4(&Console,
                               ProcessData->ConsoleHandle,
                               CONSOLE_RUNNING, TRUE))
    {
        // FIXME: Find another status code
        return STATUS_UNSUCCESSFUL;
    }

    FUNC5("ConSrvRemoveConsole - Locking OK\n");

    /* Retrieve the console leader process */
    ConsoleLeaderProcess = FUNC2(Console);

    /* Close all console handles and free the handles table */
    FUNC1(ProcessData);

    /* Detach the process from the console */
    ProcessData->ConsoleHandle = NULL;

    /* Remove the process from the console's list of processes */
    FUNC6(&ProcessData->ConsoleLink);

    /* Check whether the console should send a last close notification */
    if (Console->NotifyLastClose)
    {
        /* If we are removing the process which wants the last close notification... */
        if (ProcessData == Console->NotifiedLastCloseProcess)
        {
            /* ... just reset the flag and the pointer... */
            Console->NotifyLastClose = FALSE;
            Console->NotifiedLastCloseProcess = NULL;
        }
        /*
         * ... otherwise, if we are removing the console leader process
         * (that cannot be the process wanting the notification, because
         * the previous case already dealt with it)...
         */
        else if (ProcessData == ConsoleLeaderProcess)
        {
            /*
             * ... reset the flag first (so that we avoid multiple notifications)
             * and then send the last close notification.
             */
            Console->NotifyLastClose = FALSE;
            FUNC0(CTRL_LAST_CLOSE_EVENT, Console->NotifiedLastCloseProcess);

            /* Only now, reset the pointer */
            Console->NotifiedLastCloseProcess = NULL;
        }
    }

    /* Update the internal info of the terminal */
    FUNC7(Console);

    /* Release the console */
    FUNC5("ConSrvRemoveConsole - Decrement Console->ReferenceCount = %lu\n", Console->ReferenceCount);
    FUNC3(Console, TRUE);

    return STATUS_SUCCESS;
}