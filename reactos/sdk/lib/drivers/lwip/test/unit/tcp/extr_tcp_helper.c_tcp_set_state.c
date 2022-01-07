
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* u16_t ;
struct TYPE_8__ {int addr; } ;
struct TYPE_7__ {int addr; } ;
struct tcp_pcb {int state; void* remote_port; TYPE_2__ remote_ip; void* local_port; TYPE_1__ local_ip; } ;
struct TYPE_9__ {int addr; } ;
typedef TYPE_3__ ip_addr_t ;
typedef enum tcp_state { ____Placeholder_tcp_state } tcp_state ;
struct TYPE_10__ {int pcbs; } ;


 int ESTABLISHED ;
 int LISTEN ;
 int TCP_REG (int *,struct tcp_pcb*) ;
 int TIME_WAIT ;
 int fail () ;
 int tcp_active_pcbs ;
 TYPE_6__ tcp_listen_pcbs ;
 int tcp_tw_pcbs ;

void
tcp_set_state(struct tcp_pcb* pcb, enum tcp_state state, ip_addr_t* local_ip,
                   ip_addr_t* remote_ip, u16_t local_port, u16_t remote_port)
{


  pcb->state = state;
  if (state == ESTABLISHED) {
    TCP_REG(&tcp_active_pcbs, pcb);
    pcb->local_ip.addr = local_ip->addr;
    pcb->local_port = local_port;
    pcb->remote_ip.addr = remote_ip->addr;
    pcb->remote_port = remote_port;
  } else if(state == LISTEN) {
    TCP_REG(&tcp_listen_pcbs.pcbs, pcb);
    pcb->local_ip.addr = local_ip->addr;
    pcb->local_port = local_port;
  } else if(state == TIME_WAIT) {
    TCP_REG(&tcp_tw_pcbs, pcb);
    pcb->local_ip.addr = local_ip->addr;
    pcb->local_port = local_port;
    pcb->remote_ip.addr = remote_ip->addr;
    pcb->remote_port = remote_port;
  } else {
    fail();
  }
}
