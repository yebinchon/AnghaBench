
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32_t ;
struct tcp_seg {struct tcp_seg* next; TYPE_1__* tcphdr; } ;
struct tcp_pcb {struct tcp_seg* ooseq; } ;
struct TYPE_2__ {int seqno; } ;


 int fail () ;

__attribute__((used)) static u32_t
tcp_oos_seg_seqno(struct tcp_pcb* pcb, int seg_index)
{
  int num = 0;
  struct tcp_seg* seg = pcb->ooseq;


  while(seg != ((void*)0)) {
    if(num == seg_index) {
      return seg->tcphdr->seqno;
    }
    num++;
    seg = seg->next;
  }
  fail();
  return 0;
}
