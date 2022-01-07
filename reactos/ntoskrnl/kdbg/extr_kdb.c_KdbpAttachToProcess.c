
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
struct TYPE_13__ {int ThreadListHead; } ;
struct TYPE_9__ {int * Flink; } ;
struct TYPE_12__ {TYPE_1__ ThreadListHead; } ;
struct TYPE_10__ {int UniqueThread; } ;
struct TYPE_11__ {TYPE_2__ Cid; } ;
typedef scalar_t__ PVOID ;
typedef int * PLIST_ENTRY ;
typedef TYPE_3__* PETHREAD ;
typedef TYPE_4__* PEPROCESS ;
typedef int BOOLEAN ;


 TYPE_3__* CONTAINING_RECORD (int *,int ,int ) ;
 int ETHREAD ;
 int FALSE ;
 TYPE_7__* KdbCurrentProcess ;
 int KdbpAttachToThread (int ) ;
 int KdbpPrint (char*,scalar_t__) ;
 int NT_SUCCESS (int ) ;
 int ObDereferenceObject (TYPE_4__*) ;
 int PsLookupProcessByProcessId (scalar_t__,TYPE_4__**) ;
 int ThreadListEntry ;

BOOLEAN
KdbpAttachToProcess(
    PVOID ProcessId)
{
    PEPROCESS Process = ((void*)0);
    PETHREAD Thread;
    PLIST_ENTRY Entry;


    if (!NT_SUCCESS(PsLookupProcessByProcessId(ProcessId, &Process)))
    {
        KdbpPrint("Invalid process id: 0x%08x\n", (ULONG_PTR)ProcessId);
        return FALSE;
    }

    Entry = Process->ThreadListHead.Flink;
    ObDereferenceObject(Process);
    if (Entry == &KdbCurrentProcess->ThreadListHead)
    {
        KdbpPrint("No threads in process 0x%p, cannot attach to process!\n", ProcessId);
        return FALSE;
    }

    Thread = CONTAINING_RECORD(Entry, ETHREAD, ThreadListEntry);

    return KdbpAttachToThread(Thread->Cid.UniqueThread);
}
