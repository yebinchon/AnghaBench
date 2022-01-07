
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int UINT ;
typedef int PVOID ;
typedef int * PNDIS_PACKET ;
typedef int * PNDIS_BUFFER ;
typedef int PCHAR ;


 int DEBUG_PBUFFER ;
 int NdisFreeBuffer (int *) ;
 int NdisFreePacket (int *) ;
 int NdisGetNextBuffer (int *,int **) ;
 int NdisQueryPacket (int *,int *,int *,int **,int *) ;
 int TI_DbgPrint (int ,char*) ;
 int UntrackFL (int ,int ,int *) ;
 int XNdisQueryBuffer (int *,int *,int *) ;
 int exFreePool (int ) ;

VOID FreeNdisPacketX
( PNDIS_PACKET Packet,
  PCHAR File,
  UINT Line )





{
    PNDIS_BUFFER Buffer, NextBuffer;

    TI_DbgPrint(DEBUG_PBUFFER, ("Packet (0x%X)\n", Packet));


    NdisQueryPacket(Packet, ((void*)0), ((void*)0), &Buffer, ((void*)0));
    for (; Buffer != ((void*)0); Buffer = NextBuffer) {
        PVOID Data;
        UINT Length;

        NdisGetNextBuffer(Buffer, &NextBuffer);
        XNdisQueryBuffer(Buffer, &Data, &Length);
 UntrackFL(File,Line,Buffer);
        NdisFreeBuffer(Buffer);
        exFreePool(Data);
    }


    UntrackFL(File,Line,Packet);
    NdisFreePacket(Packet);
}
