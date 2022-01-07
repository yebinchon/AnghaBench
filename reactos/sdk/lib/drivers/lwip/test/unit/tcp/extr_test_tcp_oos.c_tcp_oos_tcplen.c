
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_seg {struct tcp_seg* next; } ;
struct tcp_pcb {struct tcp_seg* ooseq; } ;


 scalar_t__ TCP_TCPLEN (struct tcp_seg*) ;

__attribute__((used)) static int
tcp_oos_tcplen(struct tcp_pcb* pcb)
{
  int len = 0;
  struct tcp_seg* seg = pcb->ooseq;


  while(seg != ((void*)0)) {
    len += TCP_TCPLEN(seg);
    seg = seg->next;
  }
  return len;
}
