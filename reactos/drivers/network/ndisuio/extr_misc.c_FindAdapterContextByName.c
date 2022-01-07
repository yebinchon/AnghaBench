
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* Flink; } ;
struct TYPE_7__ {int DeviceName; } ;
typedef int PNDIS_STRING ;
typedef TYPE_1__* PNDISUIO_ADAPTER_CONTEXT ;
typedef TYPE_2__* PLIST_ENTRY ;
typedef int KIRQL ;


 TYPE_1__* CONTAINING_RECORD (TYPE_2__*,int ,int ) ;
 TYPE_2__ GlobalAdapterList ;
 int GlobalAdapterListLock ;
 int KeAcquireSpinLock (int *,int *) ;
 int KeReleaseSpinLock (int *,int ) ;
 int ListEntry ;
 int NDISUIO_ADAPTER_CONTEXT ;
 scalar_t__ RtlEqualUnicodeString (int *,int ,int ) ;
 int TRUE ;

PNDISUIO_ADAPTER_CONTEXT
FindAdapterContextByName(PNDIS_STRING DeviceName)
{
    KIRQL OldIrql;
    PLIST_ENTRY CurrentEntry;
    PNDISUIO_ADAPTER_CONTEXT AdapterContext;

    KeAcquireSpinLock(&GlobalAdapterListLock, &OldIrql);
    CurrentEntry = GlobalAdapterList.Flink;
    while (CurrentEntry != &GlobalAdapterList)
    {
        AdapterContext = CONTAINING_RECORD(CurrentEntry, NDISUIO_ADAPTER_CONTEXT, ListEntry);


        if (RtlEqualUnicodeString(&AdapterContext->DeviceName, DeviceName, TRUE))
        {
            KeReleaseSpinLock(&GlobalAdapterListLock, OldIrql);
            return AdapterContext;
        }

        CurrentEntry = CurrentEntry->Flink;
    }
    KeReleaseSpinLock(&GlobalAdapterListLock, OldIrql);

    return ((void*)0);
}
