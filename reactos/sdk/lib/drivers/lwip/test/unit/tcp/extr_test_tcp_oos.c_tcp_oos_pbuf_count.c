
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_seg {struct tcp_seg* next; int p; } ;
struct tcp_pcb {struct tcp_seg* ooseq; } ;


 scalar_t__ pbuf_clen (int ) ;

__attribute__((used)) static int tcp_oos_pbuf_count(struct tcp_pcb* pcb)
{
  int num = 0;
  struct tcp_seg* seg = pcb->ooseq;
  while(seg != ((void*)0)) {
    num += pbuf_clen(seg->p);
    seg = seg->next;
  }
  return num;
}
