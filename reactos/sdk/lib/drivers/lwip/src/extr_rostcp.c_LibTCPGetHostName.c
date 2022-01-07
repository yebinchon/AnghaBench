
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16_t ;
struct ip_addr {int dummy; } ;
typedef int err_t ;
struct TYPE_3__ {int local_port; struct ip_addr local_ip; } ;
typedef TYPE_1__* PTCP_PCB ;


 int ERR_CLSD ;
 int ERR_OK ;

err_t
LibTCPGetHostName(PTCP_PCB pcb, struct ip_addr *const ipaddr, u16_t *const port)
{
    if (!pcb)
        return ERR_CLSD;

    *ipaddr = pcb->local_ip;
    *port = pcb->local_port;

    return ERR_OK;
}
