
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct netif {char* name; int flags; int mtu; int output; int hwaddr_len; int hwaddr; TYPE_1__* state; } ;
typedef int err_t ;
struct TYPE_4__ {int MTU; int Address; int AddressLength; } ;
typedef TYPE_1__* PIP_INTERFACE ;


 int NETIF_FLAG_BROADCAST ;
 int RtlCopyMemory (int ,int ,int ) ;
 int TCPSendDataCallback ;
 int TCPUpdateInterfaceIPInformation (TYPE_1__*) ;
 int TCPUpdateInterfaceLinkStatus (TYPE_1__*) ;

err_t
TCPInterfaceInit(struct netif *netif)
{
    PIP_INTERFACE IF = netif->state;

    netif->hwaddr_len = IF->AddressLength;
    RtlCopyMemory(netif->hwaddr, IF->Address, netif->hwaddr_len);

    netif->output = TCPSendDataCallback;
    netif->mtu = IF->MTU;

    netif->name[0] = 'e';
    netif->name[1] = 'n';

    netif->flags |= NETIF_FLAG_BROADCAST;

    TCPUpdateInterfaceLinkStatus(IF);

    TCPUpdateInterfaceIPInformation(IF);

    return 0;
}
