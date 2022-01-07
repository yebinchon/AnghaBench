
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_4__ {int Type; scalar_t__ Header; int MappedHeader; int * NdisPacket; scalar_t__ ReturnPacket; } ;
typedef TYPE_1__* PVOID ;
typedef TYPE_1__* PIP_PACKET ;


 int ASSERT (int) ;
 int ExFreePoolWithTag (scalar_t__,int ) ;
 int FreeNdisPacket (int *) ;
 int MAX_TRACE ;
 int NdisReturnPackets (int **,int) ;
 int PACKET_BUFFER_TAG ;
 int TI_DbgPrint (int ,char*) ;

VOID DeinitializePacket(
    PVOID Object)





{
    PIP_PACKET IPPacket = Object;

    TI_DbgPrint(MAX_TRACE, ("Freeing object: 0x%p\n", Object));


    ASSERT(IPPacket->Type != 0xFF);
    IPPacket->Type = 0xFF;


    if (IPPacket->NdisPacket != ((void*)0))
    {
        if (IPPacket->ReturnPacket)
        {

            TI_DbgPrint(MAX_TRACE, ("Returning packet 0x%p\n",
                                    IPPacket->NdisPacket));
            NdisReturnPackets(&IPPacket->NdisPacket, 1);
        }
        else
        {

            TI_DbgPrint(MAX_TRACE, ("Freeing packet 0x%p\n",
                                    IPPacket->NdisPacket));
            FreeNdisPacket(IPPacket->NdisPacket);
        }
    }


    if (!IPPacket->MappedHeader && IPPacket->Header)
    {

        TI_DbgPrint(MAX_TRACE, ("Freeing header: 0x%p\n",
                                IPPacket->Header));
        ExFreePoolWithTag(IPPacket->Header,
                          PACKET_BUFFER_TAG);
    }
}
