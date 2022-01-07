
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_tcp_txcounters {struct pbuf* tx_packets; scalar_t__ copy_tx_packets; int num_tx_bytes; int num_tx_calls; } ;
struct pbuf {scalar_t__ tot_len; } ;
struct netif {scalar_t__ state; } ;
typedef int ip_addr_t ;
typedef scalar_t__ err_t ;


 scalar_t__ ERR_OK ;
 int EXPECT (int) ;
 int LWIP_UNUSED_ARG (int *) ;
 int PBUF_LINK ;
 int PBUF_RAM ;
 struct pbuf* pbuf_alloc (int ,scalar_t__,int ) ;
 int pbuf_cat (struct pbuf*,struct pbuf*) ;
 scalar_t__ pbuf_copy (struct pbuf*,struct pbuf*) ;

__attribute__((used)) static err_t test_tcp_netif_output(struct netif *netif, struct pbuf *p,
       ip_addr_t *ipaddr)
{
  struct test_tcp_txcounters *txcounters = (struct test_tcp_txcounters*)netif->state;
  LWIP_UNUSED_ARG(ipaddr);
  if (txcounters != ((void*)0))
  {
    txcounters->num_tx_calls++;
    txcounters->num_tx_bytes += p->tot_len;
    if (txcounters->copy_tx_packets) {
      struct pbuf *p_copy = pbuf_alloc(PBUF_LINK, p->tot_len, PBUF_RAM);
      err_t err;
      EXPECT(p_copy != ((void*)0));
      err = pbuf_copy(p_copy, p);
      EXPECT(err == ERR_OK);
      if (txcounters->tx_packets == ((void*)0)) {
        txcounters->tx_packets = p_copy;
      } else {
        pbuf_cat(txcounters->tx_packets, p_copy);
      }
    }
  }
  return ERR_OK;
}
