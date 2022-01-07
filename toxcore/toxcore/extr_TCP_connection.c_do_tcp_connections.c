
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCP_Connections ;


 int do_tcp_conns (int *) ;
 int kill_nonused_tcp (int *) ;

void do_tcp_connections(TCP_Connections *tcp_c)
{
    do_tcp_conns(tcp_c);
    kill_nonused_tcp(tcp_c);
}
