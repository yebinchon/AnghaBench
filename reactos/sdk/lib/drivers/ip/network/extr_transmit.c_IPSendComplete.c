
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_2__ {int Event; int Status; } ;
typedef int PVOID ;
typedef int PNDIS_PACKET ;
typedef TYPE_1__* PIPFRAGMENT_CONTEXT ;
typedef int NDIS_STATUS ;


 int FALSE ;
 int KeSetEvent (int *,int ,int ) ;
 int MAX_TRACE ;
 int TI_DbgPrint (int ,char*) ;

VOID IPSendComplete
(PVOID Context, PNDIS_PACKET NdisPacket, NDIS_STATUS NdisStatus)
{
    PIPFRAGMENT_CONTEXT IFC = (PIPFRAGMENT_CONTEXT)Context;

    TI_DbgPrint
 (MAX_TRACE,
  ("Called. Context (0x%X)  NdisPacket (0x%X)  NdisStatus (0x%X)\n",
   Context, NdisPacket, NdisStatus));

 IFC->Status = NdisStatus;
 KeSetEvent(&IFC->Event, 0, FALSE);
}
