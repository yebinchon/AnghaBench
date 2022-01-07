
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int UINT ;
typedef int PVOID ;
typedef int PNDIS_PACKET ;
typedef int * PNDIS_BUFFER ;


 int DEBUG_PBUFFER ;
 int ExFreePoolWithTag (int ,int ) ;
 int NdisFreeBuffer (int *) ;
 int NdisFreePacket (int ) ;
 int NdisGetNextBuffer (int *,int **) ;
 int NdisQueryBuffer (int *,int *,int *) ;
 int NdisQueryPacket (int ,int *,int *,int **,int *) ;
 int PACKET_BUFFER_TAG ;
 int TI_DbgPrint (int ,char*) ;

VOID FreeNdisPacket
( PNDIS_PACKET Packet )





{
    PNDIS_BUFFER Buffer, NextBuffer;

    TI_DbgPrint(DEBUG_PBUFFER, ("Packet (0x%X)\n", Packet));


    NdisQueryPacket(Packet, ((void*)0), ((void*)0), &Buffer, ((void*)0));
    for (; Buffer != ((void*)0); Buffer = NextBuffer) {
        PVOID Data;
        UINT Length;

        NdisGetNextBuffer(Buffer, &NextBuffer);
        NdisQueryBuffer(Buffer, &Data, &Length);
 TI_DbgPrint(DEBUG_PBUFFER, ("Freeing ndis buffer (0x%X)\n", Buffer));
        NdisFreeBuffer(Buffer);
 TI_DbgPrint(DEBUG_PBUFFER, ("Freeing exal buffer (0x%X)\n", Data));
        ExFreePoolWithTag(Data, PACKET_BUFFER_TAG);
    }


    NdisFreePacket(Packet);
}
