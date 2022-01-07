
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_17__ {int Flags; int * ProcessHandle; } ;
struct TYPE_13__ {int ActiveEvent; } ;
struct TYPE_16__ {int Lock; int ReferenceCount; int HasFocus; int ProcessList; TYPE_1__ InputBuffer; int * InitEvents; } ;
struct TYPE_15__ {TYPE_7__* Process; int ConsoleLink; int * ConsoleHandle; int ConsoleApp; } ;
struct TYPE_14__ {int * ConsoleHandle; int * InitEvents; int InputWaitHandle; } ;
typedef int PHANDLE ;
typedef TYPE_2__* PCONSOLE_START_INFO ;
typedef TYPE_3__* PCONSOLE_PROCESS_DATA ;
typedef TYPE_4__* PCONSOLE ;
typedef int NTSTATUS ;
typedef int * HANDLE ;
typedef scalar_t__ BOOLEAN ;


 int CONSOLE_RUNNING ;
 int ConSrvFreeHandlesTable (TYPE_3__*) ;
 int ConSrvInitHandlesTable (TYPE_3__*,TYPE_4__*,int ,int ,int ) ;
 int ConSrvSetProcessFocus (TYPE_7__*,int ) ;
 int ConSrvValidateConsole (TYPE_4__**,int *,int ,int ) ;
 int CsrProcessIsConsoleApp ;
 int DPRINT1 (char*,...) ;
 int DUPLICATE_CLOSE_SOURCE ;
 int EVENT_ALL_ACCESS ;
 size_t INIT_FAILURE ;
 size_t INIT_SUCCESS ;
 int InsertHeadList (int *,int *) ;
 int LeaveCriticalSection (int *) ;
 int NT_SUCCESS (int ) ;
 int * NtCurrentProcess () ;
 int NtDuplicateObject (int *,int ,int *,int *,int ,int ,int ) ;
 int STATUS_SUCCESS ;
 int STATUS_UNSUCCESSFUL ;
 int TRUE ;
 int TermRefreshInternalInfo (TYPE_4__*) ;
 int _InterlockedIncrement (int *) ;

NTSTATUS
ConSrvInheritConsole(PCONSOLE_PROCESS_DATA ProcessData,
                     HANDLE ConsoleHandle,
                     BOOLEAN CreateNewHandlesTable,
                     PHANDLE pInputHandle,
                     PHANDLE pOutputHandle,
                     PHANDLE pErrorHandle,
                     PCONSOLE_START_INFO ConsoleStartInfo)
{
    NTSTATUS Status = STATUS_SUCCESS;
    PCONSOLE Console;


    if (!ConSrvValidateConsole(&Console,
                               ConsoleHandle,
                               CONSOLE_RUNNING, TRUE))
    {

        return STATUS_UNSUCCESSFUL;
    }


    ProcessData->ConsoleHandle = ConsoleHandle;

    if (CreateNewHandlesTable)
    {
        ConSrvFreeHandlesTable(ProcessData);


        Status = ConSrvInitHandlesTable(ProcessData,
                                        Console,
                                        pInputHandle,
                                        pOutputHandle,
                                        pErrorHandle);
        if (!NT_SUCCESS(Status))
        {
            DPRINT1("Failed to initialize the handles table\n");
            ProcessData->ConsoleHandle = ((void*)0);
            goto Quit;
        }
    }


    Status = NtDuplicateObject(NtCurrentProcess(),
                               Console->InitEvents[INIT_SUCCESS],
                               ProcessData->Process->ProcessHandle,
                               &ConsoleStartInfo->InitEvents[INIT_SUCCESS],
                               EVENT_ALL_ACCESS, 0, 0);
    if (!NT_SUCCESS(Status))
    {
        DPRINT1("NtDuplicateObject(InitEvents[INIT_SUCCESS]) failed: %lu\n", Status);
        ConSrvFreeHandlesTable(ProcessData);
        ProcessData->ConsoleHandle = ((void*)0);
        goto Quit;
    }

    Status = NtDuplicateObject(NtCurrentProcess(),
                               Console->InitEvents[INIT_FAILURE],
                               ProcessData->Process->ProcessHandle,
                               &ConsoleStartInfo->InitEvents[INIT_FAILURE],
                               EVENT_ALL_ACCESS, 0, 0);
    if (!NT_SUCCESS(Status))
    {
        DPRINT1("NtDuplicateObject(InitEvents[INIT_FAILURE]) failed: %lu\n", Status);
        NtDuplicateObject(ProcessData->Process->ProcessHandle,
                          ConsoleStartInfo->InitEvents[INIT_SUCCESS],
                          ((void*)0), ((void*)0), 0, 0, DUPLICATE_CLOSE_SOURCE);
        ConSrvFreeHandlesTable(ProcessData);
        ProcessData->ConsoleHandle = ((void*)0);
        goto Quit;
    }


    Status = NtDuplicateObject(NtCurrentProcess(),
                               Console->InputBuffer.ActiveEvent,
                               ProcessData->Process->ProcessHandle,
                               &ConsoleStartInfo->InputWaitHandle,
                               EVENT_ALL_ACCESS, 0, 0);
    if (!NT_SUCCESS(Status))
    {
        DPRINT1("NtDuplicateObject(InputWaitHandle) failed: %lu\n", Status);
        NtDuplicateObject(ProcessData->Process->ProcessHandle,
                          ConsoleStartInfo->InitEvents[INIT_FAILURE],
                          ((void*)0), ((void*)0), 0, 0, DUPLICATE_CLOSE_SOURCE);
        NtDuplicateObject(ProcessData->Process->ProcessHandle,
                          ConsoleStartInfo->InitEvents[INIT_SUCCESS],
                          ((void*)0), ((void*)0), 0, 0, DUPLICATE_CLOSE_SOURCE);
        ConSrvFreeHandlesTable(ProcessData);
        ProcessData->ConsoleHandle = ((void*)0);
        goto Quit;
    }


    ProcessData->ConsoleApp = TRUE;
    ProcessData->Process->Flags |= CsrProcessIsConsoleApp;


    ConsoleStartInfo->ConsoleHandle = ProcessData->ConsoleHandle;





    InsertHeadList(&Console->ProcessList, &ProcessData->ConsoleLink);
    ConSrvSetProcessFocus(ProcessData->Process, Console->HasFocus);


    _InterlockedIncrement(&Console->ReferenceCount);


    TermRefreshInternalInfo(Console);

    Status = STATUS_SUCCESS;

Quit:

    LeaveCriticalSection(&Console->Lock);
    return Status;
}
