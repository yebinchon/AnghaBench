
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_3__ {int tcp_mutex; int tcp_c; } ;
typedef int Node_format ;
typedef TYPE_1__ Net_Crypto ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 unsigned int tcp_copy_connected_relays (int ,int *,scalar_t__) ;

unsigned int copy_connected_tcp_relays(Net_Crypto *c, Node_format *tcp_relays, uint16_t num)
{
    if (num == 0)
        return 0;

    pthread_mutex_lock(&c->tcp_mutex);
    unsigned int ret = tcp_copy_connected_relays(c->tcp_c, tcp_relays, num);
    pthread_mutex_unlock(&c->tcp_mutex);

    return ret;
}
