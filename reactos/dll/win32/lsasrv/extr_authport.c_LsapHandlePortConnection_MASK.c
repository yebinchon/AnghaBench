#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  Entry; int /*<<< orphan*/ * ConnectionHandle; } ;
struct TYPE_10__ {scalar_t__ CreateContext; int OperationalMode; int /*<<< orphan*/  Status; TYPE_3__* LogonProcessNameBuffer; } ;
struct TYPE_12__ {int /*<<< orphan*/  h; TYPE_1__ ConnectInfo; } ;
struct TYPE_11__ {int Length; } ;
typedef  TYPE_2__ REMOTE_PORT_VIEW ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  TYPE_3__* PLSA_API_MSG ;
typedef  TYPE_4__* PLSAP_LOGON_CONTEXT ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_4__**) ; 
 int /*<<< orphan*/  LsapLogonContextList ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC6 (char*,TYPE_3__*) ; 
 scalar_t__ TRUE ; 

__attribute__((used)) static NTSTATUS
FUNC7(PLSA_API_MSG RequestMsg)
{
    PLSAP_LOGON_CONTEXT LogonContext = NULL;
    HANDLE ConnectionHandle = NULL;
    BOOLEAN Accept;
    REMOTE_PORT_VIEW RemotePortView;
    NTSTATUS Status = STATUS_SUCCESS;

    FUNC6("LsapHandlePortConnection(%p)\n", RequestMsg);

    FUNC6("Logon Process Name: %s\n", RequestMsg->ConnectInfo.LogonProcessNameBuffer);

    if (RequestMsg->ConnectInfo.CreateContext != FALSE)
    {
        Status = FUNC2(RequestMsg,
                                       &LogonContext);

        RequestMsg->ConnectInfo.OperationalMode = 0x43218765;

        RequestMsg->ConnectInfo.Status = Status;
    }

    if (FUNC3(Status))
    {
        Accept = TRUE;
    }
    else
    {
        Accept = FALSE;
    }

    RemotePortView.Length = sizeof(REMOTE_PORT_VIEW);
    Status = FUNC4(&ConnectionHandle,
                                 (PVOID*)LogonContext,
                                 &RequestMsg->h,
                                 Accept,
                                 NULL,
                                 &RemotePortView);
    if (!FUNC3(Status))
    {
        FUNC0("NtAcceptConnectPort failed (Status 0x%lx)\n", Status);
        return Status;
    }

    if (Accept != FALSE)
    {
        if (LogonContext != NULL)
        {
            LogonContext->ConnectionHandle = ConnectionHandle;

            FUNC1(&LsapLogonContextList,
                           &LogonContext->Entry);
        }

        Status = FUNC5(ConnectionHandle);
        if (!FUNC3(Status))
        {
            FUNC0("NtCompleteConnectPort failed (Status 0x%lx)\n", Status);
            return Status;
        }
    }

    return Status;
}