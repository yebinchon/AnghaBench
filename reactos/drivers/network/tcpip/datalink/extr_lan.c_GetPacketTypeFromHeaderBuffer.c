
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_7__ {scalar_t__ HeaderSize; int Media; } ;
struct TYPE_6__ {int EType; } ;
typedef TYPE_1__* PVOID ;
typedef int * PULONG ;
typedef TYPE_2__* PLAN_ADAPTER ;
typedef TYPE_1__* PETH_HEADER ;
typedef int NDIS_STATUS ;


 int DEBUG_DATALINK ;
 int MIN_TRACE ;
 int NDIS_STATUS_NOT_ACCEPTED ;
 int NDIS_STATUS_SUCCESS ;

 int TI_DbgPrint (int ,char*) ;

NDIS_STATUS
GetPacketTypeFromHeaderBuffer(PLAN_ADAPTER Adapter,
                              PVOID HeaderBuffer,
                              ULONG HeaderBufferSize,
                              PULONG PacketType)
{
    PETH_HEADER EthHeader = HeaderBuffer;

    if (HeaderBufferSize < Adapter->HeaderSize)
    {
        TI_DbgPrint(DEBUG_DATALINK, ("Runt frame (size %d).\n", HeaderBufferSize));
        return NDIS_STATUS_NOT_ACCEPTED;
    }

    switch (Adapter->Media)
    {
        case 128:






            *PacketType = EthHeader->EType;
            break;

        default:
            TI_DbgPrint(MIN_TRACE, ("Unsupported media.\n"));


            return NDIS_STATUS_NOT_ACCEPTED;
    }

    TI_DbgPrint(DEBUG_DATALINK, ("EtherType (0x%X).\n", *PacketType));

    return NDIS_STATUS_SUCCESS;
}
