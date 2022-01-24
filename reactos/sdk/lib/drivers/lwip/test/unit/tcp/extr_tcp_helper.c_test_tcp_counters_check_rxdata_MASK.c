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
typedef  size_t u32_t ;
struct test_tcp_counters {char* expected_data; size_t recved_bytes; size_t expected_data_len; } ;
struct pbuf {size_t tot_len; char* payload; size_t len; struct pbuf* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(struct test_tcp_counters* counters, struct pbuf* p)
{
  struct pbuf* q;
  u32_t i, received;
  if(counters->expected_data == NULL) {
    /* no data to compare */
    return;
  }
  FUNC1(counters->recved_bytes + p->tot_len <= counters->expected_data_len);
  received = counters->recved_bytes;
  for(q = p; q != NULL; q = q->next) {
    char *data = q->payload;
    for(i = 0; i < q->len; i++) {
      FUNC1(data[i] == counters->expected_data[received]);
      received++;
    }
  }
  FUNC0(received == counters->recved_bytes + p->tot_len);
}