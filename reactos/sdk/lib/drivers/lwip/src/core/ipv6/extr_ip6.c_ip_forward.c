
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pbuf {int dummy; } ;
struct netif {int (* output ) (struct netif*,struct pbuf*,struct ip_addr*) ;} ;
struct ip_hdr {scalar_t__ hoplim; scalar_t__ nexthdr; int dest; } ;
struct ip_addr {int dummy; } ;
struct TYPE_2__ {int xmit; int fw; } ;


 int ICMP_TE_TTL ;
 int IP_DEBUG ;
 scalar_t__ IP_PROTO_ICMP ;
 int IP_STATS_INC (int ) ;
 int LWIP_DEBUGF (int ,char*) ;
 int PERF_START ;
 int PERF_STOP (char*) ;
 int icmp_time_exceeded (struct pbuf*,int ) ;
 TYPE_1__ ip ;
 int ip_addr_debug_print (int ,struct ip_addr*) ;
 struct netif* ip_route (struct ip_addr*) ;
 int pbuf_free (struct pbuf*) ;
 int stub1 (struct netif*,struct pbuf*,struct ip_addr*) ;

__attribute__((used)) static void
ip_forward(struct pbuf *p, struct ip_hdr *iphdr)
{
  struct netif *netif;

  PERF_START;

  if ((netif = ip_route((struct ip_addr *)&(iphdr->dest))) == ((void*)0)) {

    LWIP_DEBUGF(IP_DEBUG, ("ip_input: no forwarding route found for "));



    LWIP_DEBUGF(IP_DEBUG, ("\n"));
    pbuf_free(p);
    return;
  }

  if (--iphdr->hoplim == 0) {






    pbuf_free(p);
    return;
  }
  LWIP_DEBUGF(IP_DEBUG, ("ip_forward: forwarding packet to "));



  LWIP_DEBUGF(IP_DEBUG, ("\n"));

  IP_STATS_INC(ip.fw);
  IP_STATS_INC(ip.xmit);

  PERF_STOP("ip_forward");

  netif->output(netif, p, (struct ip_addr *)&(iphdr->dest));
}
