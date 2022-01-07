
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int ULONG ;
typedef int PVOID ;
typedef int PNDIS_PACKET ;
typedef int PNDIS_BUFFER ;
typedef scalar_t__ BOOLEAN ;


 int ExFreePool (int ) ;
 int NdisFreeBuffer (int ) ;
 int NdisFreePacket (int ) ;
 int NdisQueryBuffer (int ,int *,int *) ;
 int NdisUnchainBufferAtFront (int ,int *) ;
 scalar_t__ TRUE ;

VOID
CleanupAndFreePacket(PNDIS_PACKET Packet, BOOLEAN FreePool)
{
    PNDIS_BUFFER Buffer;
    PVOID Data;
    ULONG Length;


    while (TRUE)
    {

        NdisUnchainBufferAtFront(Packet, &Buffer);
        if (!Buffer)
            break;


        NdisQueryBuffer(Buffer, &Data, &Length);


        NdisFreeBuffer(Buffer);

        if (FreePool)
        {

            ExFreePool(Data);
        }
    }


    NdisFreePacket(Packet);
}
