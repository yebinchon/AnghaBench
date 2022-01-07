
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCP_Server ;


 int do_TCP_accept_new (int *) ;
 int do_TCP_confirmed (int *) ;
 int do_TCP_epoll (int *) ;
 int do_TCP_incomming (int *) ;
 int do_TCP_unconfirmed (int *) ;
 int unix_time_update () ;

void do_TCP_server(TCP_Server *TCP_server)
{
    unix_time_update();





    do_TCP_accept_new(TCP_server);
    do_TCP_incomming(TCP_server);
    do_TCP_unconfirmed(TCP_server);


    do_TCP_confirmed(TCP_server);
}
