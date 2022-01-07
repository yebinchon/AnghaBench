
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_tcp_counters {scalar_t__ close_calls; scalar_t__ recv_calls_after_close; scalar_t__ recved_bytes_after_close; int recved_bytes; int recv_calls; } ;
struct tcp_pcb {int dummy; } ;
struct pbuf {scalar_t__ tot_len; } ;
typedef scalar_t__ err_t ;


 scalar_t__ ERR_OK ;
 int EXPECT (int) ;
 int EXPECT_RETX (int,scalar_t__) ;
 int pbuf_free (struct pbuf*) ;
 int test_tcp_counters_check_rxdata (struct test_tcp_counters*,struct pbuf*) ;

err_t
test_tcp_counters_recv(void* arg, struct tcp_pcb* pcb, struct pbuf* p, err_t err)
{
  struct test_tcp_counters* counters = arg;
  EXPECT_RETX(arg != ((void*)0), ERR_OK);
  EXPECT_RETX(pcb != ((void*)0), ERR_OK);
  EXPECT_RETX(err == ERR_OK, ERR_OK);

  if (p != ((void*)0)) {
    if (counters->close_calls == 0) {
      counters->recv_calls++;
      test_tcp_counters_check_rxdata(counters, p);
      counters->recved_bytes += p->tot_len;
    } else {
      counters->recv_calls_after_close++;
      counters->recved_bytes_after_close += p->tot_len;
    }
    pbuf_free(p);
  } else {
    counters->close_calls++;
  }
  EXPECT(counters->recv_calls_after_close == 0 && counters->recved_bytes_after_close == 0);
  return ERR_OK;
}
