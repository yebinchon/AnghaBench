
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int Entry; int * ConnectionHandle; } ;
struct TYPE_10__ {scalar_t__ CreateContext; int OperationalMode; int Status; TYPE_3__* LogonProcessNameBuffer; } ;
struct TYPE_12__ {int h; TYPE_1__ ConnectInfo; } ;
struct TYPE_11__ {int Length; } ;
typedef TYPE_2__ REMOTE_PORT_VIEW ;
typedef int PVOID ;
typedef TYPE_3__* PLSA_API_MSG ;
typedef TYPE_4__* PLSAP_LOGON_CONTEXT ;
typedef int NTSTATUS ;
typedef int * HANDLE ;
typedef scalar_t__ BOOLEAN ;


 int ERR (char*,int ) ;
 scalar_t__ FALSE ;
 int InsertHeadList (int *,int *) ;
 int LsapCheckLogonProcess (TYPE_3__*,TYPE_4__**) ;
 int LsapLogonContextList ;
 scalar_t__ NT_SUCCESS (int ) ;
 int NtAcceptConnectPort (int **,int *,int *,scalar_t__,int *,TYPE_2__*) ;
 int NtCompleteConnectPort (int *) ;
 int STATUS_SUCCESS ;
 int TRACE (char*,TYPE_3__*) ;
 scalar_t__ TRUE ;

__attribute__((used)) static NTSTATUS
LsapHandlePortConnection(PLSA_API_MSG RequestMsg)
{
    PLSAP_LOGON_CONTEXT LogonContext = ((void*)0);
    HANDLE ConnectionHandle = ((void*)0);
    BOOLEAN Accept;
    REMOTE_PORT_VIEW RemotePortView;
    NTSTATUS Status = STATUS_SUCCESS;

    TRACE("LsapHandlePortConnection(%p)\n", RequestMsg);

    TRACE("Logon Process Name: %s\n", RequestMsg->ConnectInfo.LogonProcessNameBuffer);

    if (RequestMsg->ConnectInfo.CreateContext != FALSE)
    {
        Status = LsapCheckLogonProcess(RequestMsg,
                                       &LogonContext);

        RequestMsg->ConnectInfo.OperationalMode = 0x43218765;

        RequestMsg->ConnectInfo.Status = Status;
    }

    if (NT_SUCCESS(Status))
    {
        Accept = TRUE;
    }
    else
    {
        Accept = FALSE;
    }

    RemotePortView.Length = sizeof(REMOTE_PORT_VIEW);
    Status = NtAcceptConnectPort(&ConnectionHandle,
                                 (PVOID*)LogonContext,
                                 &RequestMsg->h,
                                 Accept,
                                 ((void*)0),
                                 &RemotePortView);
    if (!NT_SUCCESS(Status))
    {
        ERR("NtAcceptConnectPort failed (Status 0x%lx)\n", Status);
        return Status;
    }

    if (Accept != FALSE)
    {
        if (LogonContext != ((void*)0))
        {
            LogonContext->ConnectionHandle = ConnectionHandle;

            InsertHeadList(&LsapLogonContextList,
                           &LogonContext->Entry);
        }

        Status = NtCompleteConnectPort(ConnectionHandle);
        if (!NT_SUCCESS(Status))
        {
            ERR("NtCompleteConnectPort failed (Status 0x%lx)\n", Status);
            return Status;
        }
    }

    return Status;
}
