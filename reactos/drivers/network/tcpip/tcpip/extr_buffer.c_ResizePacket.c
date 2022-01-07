
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {scalar_t__ ByteCount; } ;
typedef int PNDIS_PACKET ;
typedef TYPE_1__* PNDIS_BUFFER ;


 int NdisQueryPacket (int ,int *,int *,TYPE_1__**,int *) ;

UINT ResizePacket(
    PNDIS_PACKET Packet,
    UINT Size)
{
    PNDIS_BUFFER NdisBuffer;
    UINT OldSize;

    NdisQueryPacket(Packet, ((void*)0), ((void*)0), &NdisBuffer, ((void*)0));

    OldSize = NdisBuffer->ByteCount;

    if (Size != OldSize)
        NdisBuffer->ByteCount = Size;

    return OldSize;
}
