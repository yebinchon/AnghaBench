
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_pcb {int dummy; } ;
typedef int PTCP_PCB ;


 int ASSERT (void*) ;
 int InternalErrorEventHandler ;
 int InternalRecvEventHandler ;
 int InternalSendEventHandler ;
 int tcp_accepted (struct tcp_pcb*) ;
 int tcp_arg (int ,void*) ;
 int tcp_err (int ,int ) ;
 int tcp_recv (int ,int ) ;
 int tcp_sent (int ,int ) ;

void
LibTCPAccept(PTCP_PCB pcb, struct tcp_pcb *listen_pcb, void *arg)
{
    ASSERT(arg);

    tcp_arg(pcb, ((void*)0));
    tcp_recv(pcb, InternalRecvEventHandler);
    tcp_sent(pcb, InternalSendEventHandler);
    tcp_err(pcb, InternalErrorEventHandler);
    tcp_arg(pcb, arg);

    tcp_accepted(listen_pcb);
}
