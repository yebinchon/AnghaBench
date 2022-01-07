
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_9__ {int Spinlock; int OpenCount; } ;
struct TYPE_8__ {TYPE_1__* FileObject; int ListEntry; } ;
struct TYPE_7__ {int * FsContext2; int * FsContext; } ;
typedef TYPE_2__* PNDISUIO_OPEN_ENTRY ;
typedef TYPE_3__* PNDISUIO_ADAPTER_CONTEXT ;
typedef int KIRQL ;


 int ExFreePool (TYPE_2__*) ;
 int KeAcquireSpinLock (int *,int *) ;
 int KeReleaseSpinLock (int *,int ) ;
 int RemoveEntryList (int *) ;

VOID
DereferenceAdapterContextWithOpenEntry(PNDISUIO_ADAPTER_CONTEXT AdapterContext,
                                       PNDISUIO_OPEN_ENTRY OpenEntry)
{
    KIRQL OldIrql;


    KeAcquireSpinLock(&AdapterContext->Spinlock, &OldIrql);


    AdapterContext->OpenCount--;


    if (OpenEntry != ((void*)0))
    {

        RemoveEntryList(&OpenEntry->ListEntry);


        OpenEntry->FileObject->FsContext = ((void*)0);
        OpenEntry->FileObject->FsContext2 = ((void*)0);


        ExFreePool(OpenEntry);
    }


    KeReleaseSpinLock(&AdapterContext->Spinlock, OldIrql);
}
