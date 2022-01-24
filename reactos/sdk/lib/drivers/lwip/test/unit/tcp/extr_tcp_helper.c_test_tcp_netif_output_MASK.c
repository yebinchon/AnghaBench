#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct test_tcp_txcounters {struct pbuf* tx_packets; scalar_t__ copy_tx_packets; int /*<<< orphan*/  num_tx_bytes; int /*<<< orphan*/  num_tx_calls; } ;
struct pbuf {scalar_t__ tot_len; } ;
struct netif {scalar_t__ state; } ;
typedef  int /*<<< orphan*/  ip_addr_t ;
typedef  scalar_t__ err_t ;

/* Variables and functions */
 scalar_t__ ERR_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PBUF_LINK ; 
 int /*<<< orphan*/  PBUF_RAM ; 
 struct pbuf* FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pbuf*,struct pbuf*) ; 
 scalar_t__ FUNC4 (struct pbuf*,struct pbuf*) ; 

__attribute__((used)) static err_t FUNC5(struct netif *netif, struct pbuf *p,
       ip_addr_t *ipaddr)
{
  struct test_tcp_txcounters *txcounters = (struct test_tcp_txcounters*)netif->state;
  FUNC1(ipaddr);
  if (txcounters != NULL)
  {
    txcounters->num_tx_calls++;
    txcounters->num_tx_bytes += p->tot_len;
    if (txcounters->copy_tx_packets) {
      struct pbuf *p_copy = FUNC2(PBUF_LINK, p->tot_len, PBUF_RAM);
      err_t err;
      FUNC0(p_copy != NULL);
      err = FUNC4(p_copy, p);
      FUNC0(err == ERR_OK);
      if (txcounters->tx_packets == NULL) {
        txcounters->tx_packets = p_copy;
      } else {
        FUNC3(txcounters->tx_packets, p_copy);
      }
    }
  }
  return ERR_OK;
}