
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * netif_default ;
 int * netif_list ;
 int tcp_remove_all () ;

__attribute__((used)) static void
tcp_teardown(void)
{
  tcp_remove_all();
  netif_list = ((void*)0);
  netif_default = ((void*)0);
}
