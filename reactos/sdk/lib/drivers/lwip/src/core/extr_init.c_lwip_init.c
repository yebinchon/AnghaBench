
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int autoip_init () ;
 int dns_init () ;
 int etharp_init () ;
 int igmp_init () ;
 int ip_init () ;
 int lwip_socket_init () ;
 int mem_init () ;
 int memp_init () ;
 int netif_init () ;
 int pbuf_init () ;
 int raw_init () ;
 int snmp_init () ;
 int stats_init () ;
 int sys_init () ;
 int sys_timeouts_init () ;
 int tcp_init () ;
 int udp_init () ;

void
lwip_init(void)
{

  stats_init();

  sys_init();

  mem_init();
  memp_init();
  pbuf_init();
  netif_init();



  ip_init();
}
