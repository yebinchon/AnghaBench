
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int ReferenceCount; TYPE_2__* NotifiedLastCloseProcess; void* NotifyLastClose; } ;
struct TYPE_13__ {int ConsoleLink; int * ConsoleHandle; TYPE_1__* Process; void* ConsoleApp; } ;
struct TYPE_12__ {int Flags; } ;
typedef TYPE_2__* PCONSOLE_PROCESS_DATA ;
typedef TYPE_3__* PCONSOLE ;
typedef int NTSTATUS ;


 int CONSOLE_RUNNING ;
 int CTRL_LAST_CLOSE_EVENT ;
 int ConSrvConsoleCtrlEvent (int ,TYPE_2__*) ;
 int ConSrvFreeHandlesTable (TYPE_2__*) ;
 TYPE_2__* ConSrvGetConsoleLeaderProcess (TYPE_3__*) ;
 int ConSrvReleaseConsole (TYPE_3__*,int ) ;
 int ConSrvValidateConsole (TYPE_3__**,int *,int ,int ) ;
 int CsrProcessIsConsoleApp ;
 int DPRINT (char*,...) ;
 void* FALSE ;
 int RemoveEntryList (int *) ;
 int STATUS_SUCCESS ;
 int STATUS_UNSUCCESSFUL ;
 int TRUE ;
 int TermRefreshInternalInfo (TYPE_3__*) ;

NTSTATUS
ConSrvRemoveConsole(PCONSOLE_PROCESS_DATA ProcessData)
{
    PCONSOLE Console;
    PCONSOLE_PROCESS_DATA ConsoleLeaderProcess;

    DPRINT("ConSrvRemoveConsole\n");


    ProcessData->ConsoleApp = FALSE;
    ProcessData->Process->Flags &= ~CsrProcessIsConsoleApp;


    if (!ConSrvValidateConsole(&Console,
                               ProcessData->ConsoleHandle,
                               CONSOLE_RUNNING, TRUE))
    {

        return STATUS_UNSUCCESSFUL;
    }

    DPRINT("ConSrvRemoveConsole - Locking OK\n");


    ConsoleLeaderProcess = ConSrvGetConsoleLeaderProcess(Console);


    ConSrvFreeHandlesTable(ProcessData);


    ProcessData->ConsoleHandle = ((void*)0);


    RemoveEntryList(&ProcessData->ConsoleLink);


    if (Console->NotifyLastClose)
    {

        if (ProcessData == Console->NotifiedLastCloseProcess)
        {

            Console->NotifyLastClose = FALSE;
            Console->NotifiedLastCloseProcess = ((void*)0);
        }





        else if (ProcessData == ConsoleLeaderProcess)
        {




            Console->NotifyLastClose = FALSE;
            ConSrvConsoleCtrlEvent(CTRL_LAST_CLOSE_EVENT, Console->NotifiedLastCloseProcess);


            Console->NotifiedLastCloseProcess = ((void*)0);
        }
    }


    TermRefreshInternalInfo(Console);


    DPRINT("ConSrvRemoveConsole - Decrement Console->ReferenceCount = %lu\n", Console->ReferenceCount);
    ConSrvReleaseConsole(Console, TRUE);

    return STATUS_SUCCESS;
}
