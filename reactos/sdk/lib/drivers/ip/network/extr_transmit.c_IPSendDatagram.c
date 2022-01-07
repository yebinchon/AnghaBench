
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* Interface; } ;
struct TYPE_5__ {int MTU; } ;
typedef TYPE_2__* PNEIGHBOR_CACHE_ENTRY ;
typedef int PIP_PACKET ;
typedef int NTSTATUS ;


 int DISPLAY_IP_PACKET (int ) ;
 int MAX_TRACE ;
 int MID_TRACE ;
 int SendFragments (int ,TYPE_2__*,int ) ;
 int TI_DbgPrint (int ,char*) ;

NTSTATUS IPSendDatagram(PIP_PACKET IPPacket, PNEIGHBOR_CACHE_ENTRY NCE)
{
    TI_DbgPrint(MAX_TRACE, ("Called. IPPacket (0x%X)  NCE (0x%X)\n", IPPacket, NCE));

    DISPLAY_IP_PACKET(IPPacket);


    TI_DbgPrint(MID_TRACE,("PathMTU: %d\n", NCE->Interface->MTU));

    return SendFragments(IPPacket, NCE, NCE->Interface->MTU);
}
