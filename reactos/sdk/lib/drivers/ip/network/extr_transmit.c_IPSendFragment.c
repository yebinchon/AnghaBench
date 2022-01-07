
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int State; } ;
typedef TYPE_1__* PNEIGHBOR_CACHE_ENTRY ;
typedef int PNDIS_PACKET ;
typedef int PIPFRAGMENT_CONTEXT ;
typedef int NTSTATUS ;


 int IPSendComplete ;
 int MAX_TRACE ;
 int NBQueuePacket (TYPE_1__*,int ,int ,int ) ;
 int TI_DbgPrint (int ,char*) ;

NTSTATUS IPSendFragment(
    PNDIS_PACKET NdisPacket,
    PNEIGHBOR_CACHE_ENTRY NCE,
    PIPFRAGMENT_CONTEXT IFC)
{
    TI_DbgPrint(MAX_TRACE, ("Called. NdisPacket (0x%X)  NCE (0x%X).\n", NdisPacket, NCE));

    TI_DbgPrint(MAX_TRACE, ("NCE->State = %d.\n", NCE->State));
    return NBQueuePacket(NCE, NdisPacket, IPSendComplete, IFC);
}
