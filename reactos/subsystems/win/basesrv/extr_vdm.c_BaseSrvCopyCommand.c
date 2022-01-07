
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int VDM_COMMAND_INFO ;
struct TYPE_9__ {int CmdLen; int AppLen; int PifLen; int CurDirectoryLen; int EnvLen; int DesktopLen; int TitleLen; int ReservedLen; int Reserved; int Title; int Desktop; int StartupInfo; int Env; int CurDirectory; int PifFile; int AppName; int CmdLine; int StdErr; int StdOut; int StdIn; int CodePage; int iTask; } ;
struct TYPE_8__ {int EnvLen; int DesktopLen; int TitleLen; int ReservedLen; int CmdLen; int AppLen; int PifLen; int CurDirectoryLen; int VDMState; int * Reserved; int * Title; int * Desktop; int StartupInfo; int * Env; int * CurDirectory; int * PifFile; int * AppName; int * CmdLine; int StdErr; int StdOut; int StdIn; int CodePage; int ExitCode; int TaskId; } ;
struct TYPE_7__ {TYPE_2__* CommandInfo; int State; int ExitCode; } ;
typedef int STARTUPINFOA ;
typedef TYPE_1__* PVDM_DOS_RECORD ;
typedef TYPE_2__* PVDM_COMMAND_INFO ;
typedef TYPE_3__* PBASE_CHECK_VDM ;
typedef int BOOLEAN ;


 int BaseSrvFreeVDMInfo (TYPE_2__*) ;
 int BaseSrvHeap ;
 int FALSE ;
 int HEAP_ZERO_MEMORY ;
 void* RtlAllocateHeap (int ,int ,int) ;
 int RtlMoveMemory (int *,int ,int) ;
 int TRUE ;

BOOLEAN BaseSrvCopyCommand(PBASE_CHECK_VDM CheckVdmRequest, PVDM_DOS_RECORD DosRecord)
{
    BOOLEAN Success = FALSE;
    PVDM_COMMAND_INFO CommandInfo = ((void*)0);


    CommandInfo = (PVDM_COMMAND_INFO)RtlAllocateHeap(BaseSrvHeap,
                                                     HEAP_ZERO_MEMORY,
                                                     sizeof(VDM_COMMAND_INFO));
    if (CommandInfo == ((void*)0)) return FALSE;


    CommandInfo->TaskId = CheckVdmRequest->iTask;
    CommandInfo->ExitCode = DosRecord->ExitCode;
    CommandInfo->CodePage = CheckVdmRequest->CodePage;
    CommandInfo->StdIn = CheckVdmRequest->StdIn;
    CommandInfo->StdOut = CheckVdmRequest->StdOut;
    CommandInfo->StdErr = CheckVdmRequest->StdErr;


    CommandInfo->CmdLine = RtlAllocateHeap(BaseSrvHeap,
                                           HEAP_ZERO_MEMORY,
                                           CheckVdmRequest->CmdLen);
    if (CommandInfo->CmdLine == ((void*)0)) goto Cleanup;


    RtlMoveMemory(CommandInfo->CmdLine, CheckVdmRequest->CmdLine, CheckVdmRequest->CmdLen);


    CommandInfo->AppName = RtlAllocateHeap(BaseSrvHeap,
                                           HEAP_ZERO_MEMORY,
                                           CheckVdmRequest->AppLen);
    if (CommandInfo->AppName == ((void*)0)) goto Cleanup;


    RtlMoveMemory(CommandInfo->AppName, CheckVdmRequest->AppName, CheckVdmRequest->AppLen);


    if (CheckVdmRequest->PifLen != 0)
    {
        CommandInfo->PifFile = RtlAllocateHeap(BaseSrvHeap,
                                               HEAP_ZERO_MEMORY,
                                               CheckVdmRequest->PifLen);
        if (CommandInfo->PifFile == ((void*)0)) goto Cleanup;


        RtlMoveMemory(CommandInfo->PifFile, CheckVdmRequest->PifFile, CheckVdmRequest->PifLen);
    }
    else CommandInfo->PifFile = ((void*)0);


    if (CheckVdmRequest->CurDirectoryLen != 0)
    {
        CommandInfo->CurDirectory = RtlAllocateHeap(BaseSrvHeap,
                                                    HEAP_ZERO_MEMORY,
                                                    CheckVdmRequest->CurDirectoryLen);
        if (CommandInfo->CurDirectory == ((void*)0)) goto Cleanup;


        RtlMoveMemory(CommandInfo->CurDirectory,
                      CheckVdmRequest->CurDirectory,
                      CheckVdmRequest->CurDirectoryLen);
    }
    else CommandInfo->CurDirectory = ((void*)0);


    CommandInfo->Env = RtlAllocateHeap(BaseSrvHeap,
                                       HEAP_ZERO_MEMORY,
                                       CheckVdmRequest->EnvLen);
    if (CommandInfo->Env == ((void*)0)) goto Cleanup;


    RtlMoveMemory(CommandInfo->Env, CheckVdmRequest->Env, CheckVdmRequest->EnvLen);

    CommandInfo->EnvLen = CheckVdmRequest->EnvLen;
    RtlMoveMemory(&CommandInfo->StartupInfo,
                  CheckVdmRequest->StartupInfo,
                  sizeof(STARTUPINFOA));


    if (CheckVdmRequest->DesktopLen != 0)
    {
        CommandInfo->Desktop = RtlAllocateHeap(BaseSrvHeap,
                                               HEAP_ZERO_MEMORY,
                                               CheckVdmRequest->DesktopLen);
        if (CommandInfo->Desktop == ((void*)0)) goto Cleanup;


        RtlMoveMemory(CommandInfo->Desktop, CheckVdmRequest->Desktop, CheckVdmRequest->DesktopLen);
    }
    else CommandInfo->Desktop = ((void*)0);

    CommandInfo->DesktopLen = CheckVdmRequest->DesktopLen;


    if (CheckVdmRequest->TitleLen != 0)
    {
        CommandInfo->Title = RtlAllocateHeap(BaseSrvHeap,
                                             HEAP_ZERO_MEMORY,
                                             CheckVdmRequest->TitleLen);
        if (CommandInfo->Title == ((void*)0)) goto Cleanup;


        RtlMoveMemory(CommandInfo->Title, CheckVdmRequest->Title, CheckVdmRequest->TitleLen);
    }
    else CommandInfo->Title = ((void*)0);

    CommandInfo->TitleLen = CheckVdmRequest->TitleLen;


    if (CheckVdmRequest->ReservedLen != 0)
    {
        CommandInfo->Reserved = RtlAllocateHeap(BaseSrvHeap,
                                                HEAP_ZERO_MEMORY,
                                                CheckVdmRequest->ReservedLen);
        if (CommandInfo->Reserved == ((void*)0)) goto Cleanup;


        RtlMoveMemory(CommandInfo->Reserved,
                      CheckVdmRequest->Reserved,
                      CheckVdmRequest->ReservedLen);
    }
    else CommandInfo->Reserved = ((void*)0);

    CommandInfo->ReservedLen = CheckVdmRequest->ReservedLen;

    CommandInfo->CmdLen = CheckVdmRequest->CmdLen;
    CommandInfo->AppLen = CheckVdmRequest->AppLen;
    CommandInfo->PifLen = CheckVdmRequest->PifLen;
    CommandInfo->CurDirectoryLen = CheckVdmRequest->CurDirectoryLen;
    CommandInfo->VDMState = DosRecord->State;




    DosRecord->CommandInfo = CommandInfo;


    Success = TRUE;

Cleanup:

    if (!Success) BaseSrvFreeVDMInfo(CommandInfo);

    return Success;
}
