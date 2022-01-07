
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* Process; } ;
struct TYPE_3__ {int ProcessHandle; } ;
typedef int * PHANDLE ;
typedef int NTSTATUS ;


 TYPE_2__* CsrGetClientThread () ;
 int DUPLICATE_SAME_ACCESS ;
 int DUPLICATE_SAME_ATTRIBUTES ;
 int EVENT_ALL_ACCESS ;
 int FALSE ;
 int NT_SUCCESS (int ) ;
 int NotificationEvent ;
 int NtClose (int ) ;
 int NtCreateEvent (int *,int ,int *,int ,int ) ;
 int NtCurrentProcess () ;
 int NtDuplicateObject (int ,int ,int ,int *,int ,int ,int) ;

NTSTATUS BaseSrvCreatePairWaitHandles(PHANDLE ServerEvent, PHANDLE ClientEvent)
{
    NTSTATUS Status;


    Status = NtCreateEvent(ServerEvent, EVENT_ALL_ACCESS, ((void*)0), NotificationEvent, FALSE);
    if (!NT_SUCCESS(Status)) return Status;


    Status = NtDuplicateObject(NtCurrentProcess(),
                               *ServerEvent,
                               CsrGetClientThread()->Process->ProcessHandle,
                               ClientEvent,
                               0,
                               0,
                               DUPLICATE_SAME_ATTRIBUTES | DUPLICATE_SAME_ACCESS);

    if (!NT_SUCCESS(Status)) NtClose(*ServerEvent);
    return Status;
}
