
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_tcp_counters {int dummy; } ;
struct tcp_pcb {void* snd_wnd_max; void* snd_wnd; } ;


 void* TCP_WND ;
 int tcp_arg (struct tcp_pcb*,struct test_tcp_counters*) ;
 int tcp_err (struct tcp_pcb*,int ) ;
 struct tcp_pcb* tcp_new () ;
 int tcp_recv (struct tcp_pcb*,int ) ;
 int test_tcp_counters_err ;
 int test_tcp_counters_recv ;

struct tcp_pcb*
test_tcp_new_counters_pcb(struct test_tcp_counters* counters)
{
  struct tcp_pcb* pcb = tcp_new();
  if (pcb != ((void*)0)) {

    tcp_arg(pcb, counters);
    tcp_recv(pcb, test_tcp_counters_recv);
    tcp_err(pcb, test_tcp_counters_err);
    pcb->snd_wnd = TCP_WND;
    pcb->snd_wnd_max = TCP_WND;
  }
  return pcb;
}
