
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tcp_remove_all () ;

__attribute__((used)) static void
tcp_oos_setup(void)
{
  tcp_remove_all();
}
