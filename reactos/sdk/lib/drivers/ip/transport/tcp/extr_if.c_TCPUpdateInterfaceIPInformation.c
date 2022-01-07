
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ip_addr {scalar_t__ addr; } ;
typedef int VOID ;
struct TYPE_4__ {int TCPContext; } ;
typedef int PULONG ;
typedef TYPE_1__* PIP_INTERFACE ;


 int ADE_ADDRMASK ;
 int ADE_UNICAST ;
 int GetInterfaceIPv4Address (TYPE_1__*,int ,int ) ;
 int netif_set_addr (int ,struct ip_addr*,struct ip_addr*,struct ip_addr*) ;
 int netif_set_default (int ) ;
 int netif_set_down (int ) ;
 int netif_set_up (int ) ;

VOID
TCPUpdateInterfaceIPInformation(PIP_INTERFACE IF)
{
    struct ip_addr ipaddr;
    struct ip_addr netmask;
    struct ip_addr gw;

    gw.addr = 0;

    GetInterfaceIPv4Address(IF,
                            ADE_UNICAST,
                            (PULONG)&ipaddr.addr);

    GetInterfaceIPv4Address(IF,
                            ADE_ADDRMASK,
                            (PULONG)&netmask.addr);

    netif_set_addr(IF->TCPContext, &ipaddr, &netmask, &gw);

    if (ipaddr.addr != 0)
    {
        netif_set_up(IF->TCPContext);
        netif_set_default(IF->TCPContext);
    }
    else
    {
        netif_set_down(IF->TCPContext);
    }
}
