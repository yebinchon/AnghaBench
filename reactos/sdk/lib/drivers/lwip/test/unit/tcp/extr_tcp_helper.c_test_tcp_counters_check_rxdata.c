
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32_t ;
struct test_tcp_counters {char* expected_data; size_t recved_bytes; size_t expected_data_len; } ;
struct pbuf {size_t tot_len; char* payload; size_t len; struct pbuf* next; } ;


 int EXPECT (int) ;
 int EXPECT_RET (int) ;

__attribute__((used)) static void
test_tcp_counters_check_rxdata(struct test_tcp_counters* counters, struct pbuf* p)
{
  struct pbuf* q;
  u32_t i, received;
  if(counters->expected_data == ((void*)0)) {

    return;
  }
  EXPECT_RET(counters->recved_bytes + p->tot_len <= counters->expected_data_len);
  received = counters->recved_bytes;
  for(q = p; q != ((void*)0); q = q->next) {
    char *data = q->payload;
    for(i = 0; i < q->len; i++) {
      EXPECT_RET(data[i] == counters->expected_data[received]);
      received++;
    }
  }
  EXPECT(received == counters->recved_bytes + p->tot_len);
}
