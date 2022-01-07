
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_11__ ;


struct TYPE_18__ {scalar_t__ Untrusted; } ;
struct TYPE_16__ {int UniqueThread; int UniqueProcess; } ;
struct TYPE_17__ {TYPE_11__ ClientId; } ;
struct TYPE_19__ {scalar_t__ Untrusted; TYPE_2__ ConnectInfo; int * ClientProcessHandle; TYPE_1__ h; } ;
typedef TYPE_3__* PLSA_API_MSG ;
typedef TYPE_3__* PLSAP_LOGON_CONTEXT ;
typedef int OBJECT_ATTRIBUTES ;
typedef TYPE_3__* NTSTATUS ;
typedef int LSAP_LOGON_CONTEXT ;
typedef int * HANDLE ;


 scalar_t__ FALSE ;
 int HEAP_ZERO_MEMORY ;
 int InitializeObjectAttributes (int *,int *,int ,int *,int *) ;
 scalar_t__ LsapIsTrustedClient (int *) ;
 int NT_SUCCESS (TYPE_3__*) ;
 int NtClose (int *) ;
 TYPE_3__* NtOpenProcess (int **,int,int *,TYPE_11__*) ;
 int PROCESS_DUP_HANDLE ;
 int PROCESS_QUERY_INFORMATION ;
 int PROCESS_VM_OPERATION ;
 int PROCESS_VM_READ ;
 int PROCESS_VM_WRITE ;
 TYPE_3__* RtlAllocateHeap (int ,int ,int) ;
 int RtlGetProcessHeap () ;
 TYPE_3__* STATUS_INSUFFICIENT_RESOURCES ;
 TYPE_3__* STATUS_SUCCESS ;
 int TRACE (char*,TYPE_3__*,...) ;

__attribute__((used)) static NTSTATUS
LsapCheckLogonProcess(PLSA_API_MSG RequestMsg,
                      PLSAP_LOGON_CONTEXT *LogonContext)
{
    OBJECT_ATTRIBUTES ObjectAttributes;
    HANDLE ProcessHandle = ((void*)0);
    PLSAP_LOGON_CONTEXT Context = ((void*)0);
    NTSTATUS Status;

    TRACE("LsapCheckLogonProcess(%p)\n", RequestMsg);

    TRACE("Client ID: %p %p\n", RequestMsg->h.ClientId.UniqueProcess, RequestMsg->h.ClientId.UniqueThread);

    InitializeObjectAttributes(&ObjectAttributes,
                               ((void*)0),
                               0,
                               ((void*)0),
                               ((void*)0));

    Status = NtOpenProcess(&ProcessHandle,
                           PROCESS_VM_READ | PROCESS_VM_WRITE | PROCESS_VM_OPERATION | PROCESS_DUP_HANDLE | PROCESS_QUERY_INFORMATION,
                           &ObjectAttributes,
                           &RequestMsg->h.ClientId);
    if (!NT_SUCCESS(Status))
    {
        TRACE("NtOpenProcess() failed (Status %lx)\n", Status);
        return Status;
    }


    Context = RtlAllocateHeap(RtlGetProcessHeap(),
                              HEAP_ZERO_MEMORY,
                              sizeof(LSAP_LOGON_CONTEXT));
    if (Context == ((void*)0))
    {
        NtClose(ProcessHandle);
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    TRACE("New LogonContext: %p\n", Context);

    Context->ClientProcessHandle = ProcessHandle;
    Context->Untrusted = RequestMsg->ConnectInfo.Untrusted;

    if (Context->Untrusted == FALSE)
        Context->Untrusted = LsapIsTrustedClient(ProcessHandle);

    *LogonContext = Context;

    return STATUS_SUCCESS;
}
