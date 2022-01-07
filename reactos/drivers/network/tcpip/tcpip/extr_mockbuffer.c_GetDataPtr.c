
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int PUINT ;
typedef int PNDIS_PACKET ;
typedef int PNDIS_BUFFER ;
typedef int PCHAR ;


 int NdisQueryPacket (int ,int *,int *,int *,int *) ;
 int SkipToOffset (int ,int ,int *,int ) ;

void GetDataPtr( PNDIS_PACKET Packet,
   UINT Offset,
   PCHAR *DataOut,
   PUINT Size ) {
    PNDIS_BUFFER Buffer;

    NdisQueryPacket(Packet, ((void*)0), ((void*)0), &Buffer, ((void*)0));
    if( !Buffer ) return;
    SkipToOffset( Buffer, Offset, DataOut, Size );
}
