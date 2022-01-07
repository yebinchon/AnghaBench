
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PVOID ;
typedef int PNDIS_PACKET ;
typedef int NDIS_STATUS ;


 int DEBUG_ARP ;
 int FreeNdisPacket (int ) ;
 int TI_DbgPrint (int ,char*) ;

VOID ARPTransmitComplete(
    PVOID Context,
    PNDIS_PACKET NdisPacket,
    NDIS_STATUS NdisStatus)
{
    TI_DbgPrint(DEBUG_ARP, ("Called.\n"));
    FreeNdisPacket(NdisPacket);
}
