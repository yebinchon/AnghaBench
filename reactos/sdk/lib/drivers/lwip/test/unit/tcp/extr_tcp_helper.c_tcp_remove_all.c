
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* memp; } ;
struct TYPE_5__ {int pcbs; } ;
struct TYPE_4__ {scalar_t__ used; } ;


 size_t MEMP_PBUF_POOL ;
 size_t MEMP_TCP_PCB ;
 size_t MEMP_TCP_PCB_LISTEN ;
 size_t MEMP_TCP_SEG ;
 int fail_unless (int) ;
 TYPE_3__ lwip_stats ;
 int tcp_active_pcbs ;
 TYPE_2__ tcp_listen_pcbs ;
 int tcp_remove (int ) ;
 int tcp_tw_pcbs ;

void
tcp_remove_all(void)
{
  tcp_remove(tcp_listen_pcbs.pcbs);
  tcp_remove(tcp_active_pcbs);
  tcp_remove(tcp_tw_pcbs);
  fail_unless(lwip_stats.memp[MEMP_TCP_PCB].used == 0);
  fail_unless(lwip_stats.memp[MEMP_TCP_PCB_LISTEN].used == 0);
  fail_unless(lwip_stats.memp[MEMP_TCP_SEG].used == 0);
  fail_unless(lwip_stats.memp[MEMP_PBUF_POOL].used == 0);
}
