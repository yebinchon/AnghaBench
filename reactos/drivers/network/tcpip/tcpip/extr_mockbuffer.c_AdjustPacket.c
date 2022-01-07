
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
typedef scalar_t__ UINT ;
struct TYPE_3__ {scalar_t__ MappedSystemVa; int ByteCount; int ByteOffset; } ;
typedef scalar_t__ PVOID ;
typedef int PNDIS_PACKET ;
typedef TYPE_1__* PNDIS_BUFFER ;
typedef scalar_t__ INT ;


 int DEBUG_PBUFFER ;
 int NdisQueryPacket (int ,int *,int *,TYPE_1__**,int *) ;
 int TI_DbgPrint (int ,char*) ;

PVOID AdjustPacket(
    PNDIS_PACKET Packet,
    UINT Available,
    UINT Needed)
{
    PNDIS_BUFFER NdisBuffer;
    INT Adjust;

    TI_DbgPrint(DEBUG_PBUFFER, ("Available = %d, Needed = %d.\n", Available, Needed));

    Adjust = Available - Needed;

    NdisQueryPacket(Packet, ((void*)0), ((void*)0), &NdisBuffer, ((void*)0));



    if (Adjust != 0) {
        NdisBuffer->MappedSystemVa = (PVOID) ((ULONG_PTR)(NdisBuffer->MappedSystemVa) + Adjust);
        NdisBuffer->ByteOffset += Adjust;
        NdisBuffer->ByteCount -= Adjust;
    }

    return NdisBuffer->MappedSystemVa;
}
