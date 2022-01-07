
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ip_addr {scalar_t__ addr; } ;
typedef int VOID ;
struct TYPE_4__ {int TCPContext; } ;
typedef TYPE_1__* PIP_INTERFACE ;


 int TCPInterfaceInit ;
 int netif_add (int ,struct ip_addr*,struct ip_addr*,struct ip_addr*,TYPE_1__*,int ,int ) ;
 int tcpip_input ;

VOID
TCPRegisterInterface(PIP_INTERFACE IF)
{
    struct ip_addr ipaddr;
    struct ip_addr netmask;
    struct ip_addr gw;

    gw.addr = 0;
    ipaddr.addr = 0;
    netmask.addr = 0;

    IF->TCPContext = netif_add(IF->TCPContext,
                               &ipaddr,
                               &netmask,
                               &gw,
                               IF,
                               TCPInterfaceInit,
                               tcpip_input);
}
