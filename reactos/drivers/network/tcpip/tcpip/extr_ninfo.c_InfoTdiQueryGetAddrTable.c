
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_12__ {scalar_t__ tei_entity; scalar_t__ tei_instance; TYPE_2__* context; } ;
struct TYPE_11__ {int BcastAddr; int Mask; int Addr; int Index; } ;
struct TYPE_10__ {int Index; } ;
struct TYPE_9__ {scalar_t__ tei_entity; scalar_t__ tei_instance; } ;
typedef int TDI_STATUS ;
typedef TYPE_1__ TDIEntityID ;
typedef int PUINT ;
typedef int PNDIS_BUFFER ;
typedef TYPE_2__* PIP_INTERFACE ;
typedef TYPE_3__* PIPADDR_ENTRY ;
typedef int PCHAR ;
typedef int KIRQL ;
typedef int IPADDR_ENTRY ;


 int ADE_ADDRMASK ;
 int ADE_BROADCAST ;
 int ADE_UNICAST ;
 int DEBUG_INFO ;
 size_t EntityCount ;
 TYPE_8__* EntityList ;
 int EntityListLock ;
 TYPE_3__* ExAllocatePoolWithTag (int ,int,int ) ;
 int ExFreePoolWithTag (TYPE_3__*,int ) ;
 int GetInterfaceIPv4Address (TYPE_2__*,int ,int *) ;
 int IP_ADDRESS_TAG ;
 int InfoCopyOut (int ,int,int ,int ) ;
 int NonPagedPool ;
 int TDI_INVALID_PARAMETER ;
 int TDI_NO_RESOURCES ;
 int TDI_SUCCESS ;
 int TI_DbgPrint (int ,char*) ;
 int TcpipAcquireSpinLock (int *,int *) ;
 int TcpipReleaseSpinLock (int *,int ) ;

TDI_STATUS InfoTdiQueryGetAddrTable(TDIEntityID ID,
        PNDIS_BUFFER Buffer,
        PUINT BufferSize)
{
    KIRQL OldIrql;
    PIPADDR_ENTRY IPEntry;
    PIP_INTERFACE CurrentIF;
    UINT i;

    TI_DbgPrint(DEBUG_INFO, ("Called.\n"));


    TcpipAcquireSpinLock(&EntityListLock, &OldIrql);

    for (i = 0; i < EntityCount; i++)
    {
        if (EntityList[i].tei_entity == ID.tei_entity &&
            EntityList[i].tei_instance == ID.tei_instance)
            break;
    }

    if (i == EntityCount)
    {
        TcpipReleaseSpinLock(&EntityListLock, OldIrql);
        return TDI_INVALID_PARAMETER;
    }

    IPEntry = ExAllocatePoolWithTag(NonPagedPool, sizeof(IPADDR_ENTRY), IP_ADDRESS_TAG);
    if (!IPEntry)
    {
        TcpipReleaseSpinLock(&EntityListLock, OldIrql);
        return TDI_NO_RESOURCES;
    }

    CurrentIF = EntityList[i].context;

    IPEntry->Index = CurrentIF->Index;
    GetInterfaceIPv4Address(CurrentIF,
       ADE_UNICAST,
       &IPEntry->Addr);
    GetInterfaceIPv4Address(CurrentIF,
       ADE_ADDRMASK,
       &IPEntry->Mask);
    GetInterfaceIPv4Address(CurrentIF,
       ADE_BROADCAST,
       &IPEntry->BcastAddr);

    TcpipReleaseSpinLock(&EntityListLock, OldIrql);

    InfoCopyOut((PCHAR)IPEntry, sizeof(IPADDR_ENTRY),
  Buffer, BufferSize);

    ExFreePoolWithTag(IPEntry, IP_ADDRESS_TAG);

    return TDI_SUCCESS;
}
