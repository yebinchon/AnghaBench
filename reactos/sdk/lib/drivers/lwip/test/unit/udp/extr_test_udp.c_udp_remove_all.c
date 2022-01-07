
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct udp_pcb {struct udp_pcb* next; } ;
struct TYPE_4__ {TYPE_1__* memp; } ;
struct TYPE_3__ {scalar_t__ used; } ;


 size_t MEMP_UDP_PCB ;
 int fail_unless (int) ;
 TYPE_2__ lwip_stats ;
 struct udp_pcb* udp_pcbs ;
 int udp_remove (struct udp_pcb*) ;

__attribute__((used)) static void
udp_remove_all(void)
{
  struct udp_pcb *pcb = udp_pcbs;
  struct udp_pcb *pcb2;

  while(pcb != ((void*)0)) {
    pcb2 = pcb;
    pcb = pcb->next;
    udp_remove(pcb2);
  }
  fail_unless(lwip_stats.memp[MEMP_UDP_PCB].used == 0);
}
