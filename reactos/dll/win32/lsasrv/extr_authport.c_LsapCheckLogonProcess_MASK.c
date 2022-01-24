#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_11__ ;

/* Type definitions */
struct TYPE_18__ {scalar_t__ Untrusted; } ;
struct TYPE_16__ {int /*<<< orphan*/  UniqueThread; int /*<<< orphan*/  UniqueProcess; } ;
struct TYPE_17__ {TYPE_11__ ClientId; } ;
struct TYPE_19__ {scalar_t__ Untrusted; TYPE_2__ ConnectInfo; int /*<<< orphan*/ * ClientProcessHandle; TYPE_1__ h; } ;
typedef  TYPE_3__* PLSA_API_MSG ;
typedef  TYPE_3__* PLSAP_LOGON_CONTEXT ;
typedef  int /*<<< orphan*/  OBJECT_ATTRIBUTES ;
typedef  TYPE_3__* NTSTATUS ;
typedef  int /*<<< orphan*/  LSAP_LOGON_CONTEXT ;
typedef  int /*<<< orphan*/ * HANDLE ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ **,int,int /*<<< orphan*/ *,TYPE_11__*) ; 
 int PROCESS_DUP_HANDLE ; 
 int PROCESS_QUERY_INFORMATION ; 
 int PROCESS_VM_OPERATION ; 
 int PROCESS_VM_READ ; 
 int PROCESS_VM_WRITE ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_3__* STATUS_INSUFFICIENT_RESOURCES ; 
 TYPE_3__* STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC7 (char*,TYPE_3__*,...) ; 

__attribute__((used)) static NTSTATUS
FUNC8(PLSA_API_MSG RequestMsg,
                      PLSAP_LOGON_CONTEXT *LogonContext)
{
    OBJECT_ATTRIBUTES ObjectAttributes;
    HANDLE ProcessHandle = NULL;
    PLSAP_LOGON_CONTEXT Context = NULL;
    NTSTATUS Status;

    FUNC7("LsapCheckLogonProcess(%p)\n", RequestMsg);

    FUNC7("Client ID: %p %p\n", RequestMsg->h.ClientId.UniqueProcess, RequestMsg->h.ClientId.UniqueThread);

    FUNC0(&ObjectAttributes,
                               NULL,
                               0,
                               NULL,
                               NULL);

    Status = FUNC4(&ProcessHandle,
                           PROCESS_VM_READ | PROCESS_VM_WRITE | PROCESS_VM_OPERATION | PROCESS_DUP_HANDLE | PROCESS_QUERY_INFORMATION,
                           &ObjectAttributes,
                           &RequestMsg->h.ClientId);
    if (!FUNC2(Status))
    {
        FUNC7("NtOpenProcess() failed (Status %lx)\n", Status);
        return Status;
    }

    /* Allocate the logon context */
    Context = FUNC5(FUNC6(),
                              HEAP_ZERO_MEMORY,
                              sizeof(LSAP_LOGON_CONTEXT));
    if (Context == NULL)
    {
        FUNC3(ProcessHandle);
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    FUNC7("New LogonContext: %p\n", Context);

    Context->ClientProcessHandle = ProcessHandle;
    Context->Untrusted = RequestMsg->ConnectInfo.Untrusted;

    if (Context->Untrusted == FALSE)
        Context->Untrusted = FUNC1(ProcessHandle);

    *LogonContext = Context;

    return STATUS_SUCCESS;
}