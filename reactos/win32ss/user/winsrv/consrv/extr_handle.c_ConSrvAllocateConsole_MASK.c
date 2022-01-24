#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {int /*<<< orphan*/  Flags; int /*<<< orphan*/ * ProcessHandle; } ;
struct TYPE_21__ {char* ConsoleTitle; char* AppName; char* Desktop; TYPE_2__* ConsoleStartInfo; } ;
struct TYPE_20__ {TYPE_7__* Process; int /*<<< orphan*/  ConsoleLink; int /*<<< orphan*/ * ConsoleHandle; int /*<<< orphan*/  ConsoleApp; } ;
struct TYPE_17__ {int /*<<< orphan*/  ActiveEvent; } ;
struct TYPE_19__ {int /*<<< orphan*/  ReferenceCount; int /*<<< orphan*/  HasFocus; int /*<<< orphan*/  ProcessList; TYPE_1__ InputBuffer; int /*<<< orphan*/ * InitEvents; } ;
struct TYPE_18__ {int /*<<< orphan*/ * ConsoleHandle; int /*<<< orphan*/ * InitEvents; int /*<<< orphan*/  InputWaitHandle; } ;
typedef  int /*<<< orphan*/  PHANDLE ;
typedef  TYPE_3__* PCONSRV_CONSOLE ;
typedef  TYPE_4__* PCONSOLE_PROCESS_DATA ;
typedef  TYPE_5__* PCONSOLE_INIT_INFO ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/ * HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,TYPE_3__**,TYPE_5__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CsrProcessIsConsoleApp ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  DUPLICATE_CLOSE_SOURCE ; 
 int /*<<< orphan*/  EVENT_ALL_ACCESS ; 
 size_t INIT_FAILURE ; 
 size_t INIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

NTSTATUS
FUNC13(PCONSOLE_PROCESS_DATA ProcessData,
                      PHANDLE pInputHandle,
                      PHANDLE pOutputHandle,
                      PHANDLE pErrorHandle,
                      PCONSOLE_INIT_INFO ConsoleInitInfo)
{
    NTSTATUS Status = STATUS_SUCCESS;
    HANDLE ConsoleHandle;
    PCONSRV_CONSOLE Console;

    /*
     * We are about to create a new console. However when ConSrvNewProcess
     * was called, we didn't know that we wanted to create a new console and
     * therefore, we by default inherited the handles table from our parent
     * process. It's only now that we notice that in fact we do not need
     * them, because we've created a new console and thus we must use it.
     *
     * Therefore, free the handles table so that we can recreate
     * a new one later on.
     */
    FUNC1(ProcessData);

    /* Initialize a new Console owned by this process */
    FUNC5("Initialization of console '%S' for process '%S' on desktop '%S'\n",
           ConsoleInitInfo->ConsoleTitle ? ConsoleInitInfo->ConsoleTitle : L"n/a",
           ConsoleInitInfo->AppName ? ConsoleInitInfo->AppName : L"n/a",
           ConsoleInitInfo->Desktop ? ConsoleInitInfo->Desktop : L"n/a");
    Status = FUNC2(&ConsoleHandle,
                               &Console,
                               ConsoleInitInfo,
                               ProcessData->Process);
    if (!FUNC8(Status))
    {
        FUNC6("Console initialization failed\n");
        return Status;
    }

    /* Assign the new console handle */
    ProcessData->ConsoleHandle = ConsoleHandle;

    /* Initialize the handles table */
    Status = FUNC3(ProcessData,
                                    Console,
                                    pInputHandle,
                                    pOutputHandle,
                                    pErrorHandle);
    if (!FUNC8(Status))
    {
        FUNC6("Failed to initialize the handles table\n");
        FUNC0(Console);
        ProcessData->ConsoleHandle = NULL;
        return Status;
    }

    /* Duplicate the Initialization Events */
    Status = FUNC10(FUNC9(),
                               Console->InitEvents[INIT_SUCCESS],
                               ProcessData->Process->ProcessHandle,
                               &ConsoleInitInfo->ConsoleStartInfo->InitEvents[INIT_SUCCESS],
                               EVENT_ALL_ACCESS, 0, 0);
    if (!FUNC8(Status))
    {
        FUNC6("NtDuplicateObject(InitEvents[INIT_SUCCESS]) failed: %lu\n", Status);
        FUNC1(ProcessData);
        FUNC0(Console);
        ProcessData->ConsoleHandle = NULL;
        return Status;
    }

    Status = FUNC10(FUNC9(),
                               Console->InitEvents[INIT_FAILURE],
                               ProcessData->Process->ProcessHandle,
                               &ConsoleInitInfo->ConsoleStartInfo->InitEvents[INIT_FAILURE],
                               EVENT_ALL_ACCESS, 0, 0);
    if (!FUNC8(Status))
    {
        FUNC6("NtDuplicateObject(InitEvents[INIT_FAILURE]) failed: %lu\n", Status);
        FUNC10(ProcessData->Process->ProcessHandle,
                          ConsoleInitInfo->ConsoleStartInfo->InitEvents[INIT_SUCCESS],
                          NULL, NULL, 0, 0, DUPLICATE_CLOSE_SOURCE);
        FUNC1(ProcessData);
        FUNC0(Console);
        ProcessData->ConsoleHandle = NULL;
        return Status;
    }

    /* Duplicate the Input Event */
    Status = FUNC10(FUNC9(),
                               Console->InputBuffer.ActiveEvent,
                               ProcessData->Process->ProcessHandle,
                               &ConsoleInitInfo->ConsoleStartInfo->InputWaitHandle,
                               EVENT_ALL_ACCESS, 0, 0);
    if (!FUNC8(Status))
    {
        FUNC6("NtDuplicateObject(InputWaitHandle) failed: %lu\n", Status);
        FUNC10(ProcessData->Process->ProcessHandle,
                          ConsoleInitInfo->ConsoleStartInfo->InitEvents[INIT_FAILURE],
                          NULL, NULL, 0, 0, DUPLICATE_CLOSE_SOURCE);
        FUNC10(ProcessData->Process->ProcessHandle,
                          ConsoleInitInfo->ConsoleStartInfo->InitEvents[INIT_SUCCESS],
                          NULL, NULL, 0, 0, DUPLICATE_CLOSE_SOURCE);
        FUNC1(ProcessData);
        FUNC0(Console);
        ProcessData->ConsoleHandle = NULL;
        return Status;
    }

    /* Mark the process as having a console */
    ProcessData->ConsoleApp = TRUE;
    ProcessData->Process->Flags |= CsrProcessIsConsoleApp;

    /* Return the console handle to the caller */
    ConsoleInitInfo->ConsoleStartInfo->ConsoleHandle = ProcessData->ConsoleHandle;

    /*
     * Insert the process into the processes list of the console,
     * and set its foreground priority.
     */
    FUNC7(&Console->ProcessList, &ProcessData->ConsoleLink);
    FUNC4(ProcessData->Process, Console->HasFocus);

    /* Add a reference count because the process is tied to the console */
    FUNC12(&Console->ReferenceCount);

    /* Update the internal info of the terminal */
    FUNC11(Console);

    return STATUS_SUCCESS;
}