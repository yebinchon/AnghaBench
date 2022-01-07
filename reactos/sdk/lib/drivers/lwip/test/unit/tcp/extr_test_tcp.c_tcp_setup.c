
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tcp_next_iss () ;
 int tcp_remove_all () ;
 int tcp_ticks ;
 scalar_t__ test_tcp_timer ;

__attribute__((used)) static void
tcp_setup(void)
{

  tcp_ticks = 0;
  tcp_ticks = 0 - (tcp_next_iss() - 6510);
  tcp_next_iss();
  tcp_ticks = 0;

  test_tcp_timer = 0;
  tcp_remove_all();
}
