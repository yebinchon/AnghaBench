
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_22__ {int Flags; int * ProcessHandle; } ;
struct TYPE_21__ {char* ConsoleTitle; char* AppName; char* Desktop; TYPE_2__* ConsoleStartInfo; } ;
struct TYPE_20__ {TYPE_7__* Process; int ConsoleLink; int * ConsoleHandle; int ConsoleApp; } ;
struct TYPE_17__ {int ActiveEvent; } ;
struct TYPE_19__ {int ReferenceCount; int HasFocus; int ProcessList; TYPE_1__ InputBuffer; int * InitEvents; } ;
struct TYPE_18__ {int * ConsoleHandle; int * InitEvents; int InputWaitHandle; } ;
typedef int PHANDLE ;
typedef TYPE_3__* PCONSRV_CONSOLE ;
typedef TYPE_4__* PCONSOLE_PROCESS_DATA ;
typedef TYPE_5__* PCONSOLE_INIT_INFO ;
typedef int NTSTATUS ;
typedef int * HANDLE ;


 int ConSrvDeleteConsole (TYPE_3__*) ;
 int ConSrvFreeHandlesTable (TYPE_4__*) ;
 int ConSrvInitConsole (int **,TYPE_3__**,TYPE_5__*,TYPE_7__*) ;
 int ConSrvInitHandlesTable (TYPE_4__*,TYPE_3__*,int ,int ,int ) ;
 int ConSrvSetProcessFocus (TYPE_7__*,int ) ;
 int CsrProcessIsConsoleApp ;
 int DPRINT (char*,char*,char*,char*) ;
 int DPRINT1 (char*,...) ;
 int DUPLICATE_CLOSE_SOURCE ;
 int EVENT_ALL_ACCESS ;
 size_t INIT_FAILURE ;
 size_t INIT_SUCCESS ;
 int InsertHeadList (int *,int *) ;
 int NT_SUCCESS (int ) ;
 int * NtCurrentProcess () ;
 int NtDuplicateObject (int *,int ,int *,int *,int ,int ,int ) ;
 int STATUS_SUCCESS ;
 int TRUE ;
 int TermRefreshInternalInfo (TYPE_3__*) ;
 int _InterlockedIncrement (int *) ;

NTSTATUS
ConSrvAllocateConsole(PCONSOLE_PROCESS_DATA ProcessData,
                      PHANDLE pInputHandle,
                      PHANDLE pOutputHandle,
                      PHANDLE pErrorHandle,
                      PCONSOLE_INIT_INFO ConsoleInitInfo)
{
    NTSTATUS Status = STATUS_SUCCESS;
    HANDLE ConsoleHandle;
    PCONSRV_CONSOLE Console;
    ConSrvFreeHandlesTable(ProcessData);


    DPRINT("Initialization of console '%S' for process '%S' on desktop '%S'\n",
           ConsoleInitInfo->ConsoleTitle ? ConsoleInitInfo->ConsoleTitle : L"n/a",
           ConsoleInitInfo->AppName ? ConsoleInitInfo->AppName : L"n/a",
           ConsoleInitInfo->Desktop ? ConsoleInitInfo->Desktop : L"n/a");
    Status = ConSrvInitConsole(&ConsoleHandle,
                               &Console,
                               ConsoleInitInfo,
                               ProcessData->Process);
    if (!NT_SUCCESS(Status))
    {
        DPRINT1("Console initialization failed\n");
        return Status;
    }


    ProcessData->ConsoleHandle = ConsoleHandle;


    Status = ConSrvInitHandlesTable(ProcessData,
                                    Console,
                                    pInputHandle,
                                    pOutputHandle,
                                    pErrorHandle);
    if (!NT_SUCCESS(Status))
    {
        DPRINT1("Failed to initialize the handles table\n");
        ConSrvDeleteConsole(Console);
        ProcessData->ConsoleHandle = ((void*)0);
        return Status;
    }


    Status = NtDuplicateObject(NtCurrentProcess(),
                               Console->InitEvents[INIT_SUCCESS],
                               ProcessData->Process->ProcessHandle,
                               &ConsoleInitInfo->ConsoleStartInfo->InitEvents[INIT_SUCCESS],
                               EVENT_ALL_ACCESS, 0, 0);
    if (!NT_SUCCESS(Status))
    {
        DPRINT1("NtDuplicateObject(InitEvents[INIT_SUCCESS]) failed: %lu\n", Status);
        ConSrvFreeHandlesTable(ProcessData);
        ConSrvDeleteConsole(Console);
        ProcessData->ConsoleHandle = ((void*)0);
        return Status;
    }

    Status = NtDuplicateObject(NtCurrentProcess(),
                               Console->InitEvents[INIT_FAILURE],
                               ProcessData->Process->ProcessHandle,
                               &ConsoleInitInfo->ConsoleStartInfo->InitEvents[INIT_FAILURE],
                               EVENT_ALL_ACCESS, 0, 0);
    if (!NT_SUCCESS(Status))
    {
        DPRINT1("NtDuplicateObject(InitEvents[INIT_FAILURE]) failed: %lu\n", Status);
        NtDuplicateObject(ProcessData->Process->ProcessHandle,
                          ConsoleInitInfo->ConsoleStartInfo->InitEvents[INIT_SUCCESS],
                          ((void*)0), ((void*)0), 0, 0, DUPLICATE_CLOSE_SOURCE);
        ConSrvFreeHandlesTable(ProcessData);
        ConSrvDeleteConsole(Console);
        ProcessData->ConsoleHandle = ((void*)0);
        return Status;
    }


    Status = NtDuplicateObject(NtCurrentProcess(),
                               Console->InputBuffer.ActiveEvent,
                               ProcessData->Process->ProcessHandle,
                               &ConsoleInitInfo->ConsoleStartInfo->InputWaitHandle,
                               EVENT_ALL_ACCESS, 0, 0);
    if (!NT_SUCCESS(Status))
    {
        DPRINT1("NtDuplicateObject(InputWaitHandle) failed: %lu\n", Status);
        NtDuplicateObject(ProcessData->Process->ProcessHandle,
                          ConsoleInitInfo->ConsoleStartInfo->InitEvents[INIT_FAILURE],
                          ((void*)0), ((void*)0), 0, 0, DUPLICATE_CLOSE_SOURCE);
        NtDuplicateObject(ProcessData->Process->ProcessHandle,
                          ConsoleInitInfo->ConsoleStartInfo->InitEvents[INIT_SUCCESS],
                          ((void*)0), ((void*)0), 0, 0, DUPLICATE_CLOSE_SOURCE);
        ConSrvFreeHandlesTable(ProcessData);
        ConSrvDeleteConsole(Console);
        ProcessData->ConsoleHandle = ((void*)0);
        return Status;
    }


    ProcessData->ConsoleApp = TRUE;
    ProcessData->Process->Flags |= CsrProcessIsConsoleApp;


    ConsoleInitInfo->ConsoleStartInfo->ConsoleHandle = ProcessData->ConsoleHandle;





    InsertHeadList(&Console->ProcessList, &ProcessData->ConsoleLink);
    ConSrvSetProcessFocus(ProcessData->Process, Console->HasFocus);


    _InterlockedIncrement(&Console->ReferenceCount);


    TermRefreshInternalInfo(Console);

    return STATUS_SUCCESS;
}
