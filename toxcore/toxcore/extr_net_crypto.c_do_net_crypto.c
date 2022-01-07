
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Net_Crypto ;


 int do_tcp (int *) ;
 int kill_timedout (int *) ;
 int send_crypto_packets (int *) ;
 int unix_time_update () ;

void do_net_crypto(Net_Crypto *c)
{
    unix_time_update();
    kill_timedout(c);
    do_tcp(c);
    send_crypto_packets(c);
}
