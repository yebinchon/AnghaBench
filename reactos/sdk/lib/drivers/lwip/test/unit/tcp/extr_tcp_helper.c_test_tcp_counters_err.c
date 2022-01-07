
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_tcp_counters {int last_err; int err_calls; } ;
typedef int err_t ;


 int EXPECT_RET (int ) ;

void
test_tcp_counters_err(void* arg, err_t err)
{
  struct test_tcp_counters* counters = arg;
  EXPECT_RET(arg != ((void*)0));
  counters->err_calls++;
  counters->last_err = err;
}
