
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ CmdLen; scalar_t__ AppLen; scalar_t__ PifLen; scalar_t__ CurDirectoryLen; scalar_t__ EnvLen; int DesktopLen; int TitleLen; int ReservedLen; int Reserved; int Title; int Desktop; int StartupInfo; int Env; int CurDirectory; int PifFile; int AppName; int CmdLine; int fComingFromBat; int VDMState; int CurrentDrive; int ExitCode; int dwCreationFlags; int CodePage; int StdErr; int StdOut; int StdIn; int iTask; } ;
struct TYPE_5__ {scalar_t__ CmdLen; scalar_t__ AppLen; scalar_t__ PifLen; scalar_t__ CurDirectoryLen; scalar_t__ EnvLen; int DesktopLen; int TitleLen; int ReservedLen; int * Reserved; int * Title; int * Desktop; int StartupInfo; int * Env; int * CurDirectory; int * PifFile; int * AppName; int * CmdLine; int ComingFromBat; int VDMState; int CurrentDrive; int ExitCode; int CreationFlags; int CodePage; int StdErr; int StdOut; int StdIn; int TaskId; } ;
typedef int STARTUPINFOA ;
typedef TYPE_1__* PVDM_COMMAND_INFO ;
typedef TYPE_2__* PBASE_GET_NEXT_VDM_COMMAND ;
typedef int NTSTATUS ;


 int RtlMoveMemory (int ,int *,int) ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_SUCCESS ;

NTSTATUS BaseSrvFillCommandInfo(PVDM_COMMAND_INFO CommandInfo,
                                PBASE_GET_NEXT_VDM_COMMAND Message)
{
    NTSTATUS Status = STATUS_SUCCESS;


    Message->iTask = CommandInfo->TaskId;
    Message->StdIn = CommandInfo->StdIn;
    Message->StdOut = CommandInfo->StdOut;
    Message->StdErr = CommandInfo->StdErr;
    Message->CodePage = CommandInfo->CodePage;
    Message->dwCreationFlags = CommandInfo->CreationFlags;
    Message->ExitCode = CommandInfo->ExitCode;
    Message->CurrentDrive = CommandInfo->CurrentDrive;
    Message->VDMState = CommandInfo->VDMState;
    Message->fComingFromBat = CommandInfo->ComingFromBat;

    if (Message->CmdLen >= CommandInfo->CmdLen)
    {

        RtlMoveMemory(Message->CmdLine, CommandInfo->CmdLine, CommandInfo->CmdLen);
    }
    else Status = STATUS_INVALID_PARAMETER;
    Message->CmdLen = CommandInfo->CmdLen;

    if (Message->AppLen >= CommandInfo->AppLen)
    {

        RtlMoveMemory(Message->AppName, CommandInfo->AppName, CommandInfo->AppLen);
    }
    else Status = STATUS_INVALID_PARAMETER;
    Message->AppLen = CommandInfo->AppLen;

    if (Message->PifLen >= CommandInfo->PifLen)
    {

        RtlMoveMemory(Message->PifFile, CommandInfo->PifFile, CommandInfo->PifLen);
    }
    else Status = STATUS_INVALID_PARAMETER;
    Message->PifLen = CommandInfo->PifLen;

    if (Message->CurDirectoryLen >= CommandInfo->CurDirectoryLen)
    {

        RtlMoveMemory(Message->CurDirectory, CommandInfo->CurDirectory, CommandInfo->CurDirectoryLen);
    }
    else Status = STATUS_INVALID_PARAMETER;
    Message->CurDirectoryLen = CommandInfo->CurDirectoryLen;

    if (Message->EnvLen >= CommandInfo->EnvLen)
    {

        RtlMoveMemory(Message->Env, CommandInfo->Env, CommandInfo->EnvLen);
    }
    else Status = STATUS_INVALID_PARAMETER;
    Message->EnvLen = CommandInfo->EnvLen;


    RtlMoveMemory(Message->StartupInfo,
                  &CommandInfo->StartupInfo,
                  sizeof(STARTUPINFOA));

    if (Message->DesktopLen >= CommandInfo->DesktopLen)
    {

        RtlMoveMemory(Message->Desktop, CommandInfo->Desktop, CommandInfo->DesktopLen);
    }
    else Status = STATUS_INVALID_PARAMETER;
    Message->DesktopLen = CommandInfo->DesktopLen;

    if (Message->TitleLen >= CommandInfo->TitleLen)
    {

        RtlMoveMemory(Message->Title, CommandInfo->Title, CommandInfo->TitleLen);
    }
    else Status = STATUS_INVALID_PARAMETER;
    Message->TitleLen = CommandInfo->TitleLen;

    if (Message->ReservedLen >= CommandInfo->ReservedLen)
    {

        RtlMoveMemory(Message->Reserved, CommandInfo->Reserved, CommandInfo->ReservedLen);
    }
    else Status = STATUS_INVALID_PARAMETER;
    Message->ReservedLen = CommandInfo->ReservedLen;

    return Status;
}
