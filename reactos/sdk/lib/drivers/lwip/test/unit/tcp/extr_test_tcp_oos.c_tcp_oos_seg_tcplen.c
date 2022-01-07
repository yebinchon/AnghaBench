
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_seg {struct tcp_seg* next; } ;
struct tcp_pcb {struct tcp_seg* ooseq; } ;


 int TCP_TCPLEN (struct tcp_seg*) ;
 int fail () ;

__attribute__((used)) static int
tcp_oos_seg_tcplen(struct tcp_pcb* pcb, int seg_index)
{
  int num = 0;
  struct tcp_seg* seg = pcb->ooseq;


  while(seg != ((void*)0)) {
    if(num == seg_index) {
      return TCP_TCPLEN(seg);
    }
    num++;
    seg = seg->next;
  }
  fail();
  return -1;
}
