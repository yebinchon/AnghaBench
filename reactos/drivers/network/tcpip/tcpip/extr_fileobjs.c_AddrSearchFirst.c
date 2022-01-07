
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* USHORT ;
struct TYPE_7__ {int Flink; } ;
struct TYPE_6__ {int Next; void* Protocol; void* Port; int Address; } ;
typedef int PIP_ADDRESS ;
typedef TYPE_1__* PAF_SEARCH ;
typedef int PADDRESS_FILE ;
typedef int KIRQL ;


 int ADDRESS_FILE ;
 int AddrSearchNext (TYPE_1__*) ;
 TYPE_2__ AddressFileListHead ;
 int AddressFileListLock ;
 int CONTAINING_RECORD (int ,int ,int ) ;
 int IsListEmpty (TYPE_2__*) ;
 int ListEntry ;
 int ReferenceObject (int ) ;
 int TcpipAcquireSpinLock (int *,int *) ;
 int TcpipReleaseSpinLock (int *,int ) ;

PADDRESS_FILE AddrSearchFirst(
    PIP_ADDRESS Address,
    USHORT Port,
    USHORT Protocol,
    PAF_SEARCH SearchContext)
{
    KIRQL OldIrql;

    SearchContext->Address = Address;
    SearchContext->Port = Port;
    SearchContext->Protocol = Protocol;

    TcpipAcquireSpinLock(&AddressFileListLock, &OldIrql);

    SearchContext->Next = AddressFileListHead.Flink;

    if (!IsListEmpty(&AddressFileListHead))
        ReferenceObject(CONTAINING_RECORD(SearchContext->Next, ADDRESS_FILE, ListEntry));

    TcpipReleaseSpinLock(&AddressFileListLock, OldIrql);

    return AddrSearchNext(SearchContext);
}
