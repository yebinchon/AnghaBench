
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int connection_number_tcp; } ;
struct TYPE_6__ {int tcp_mutex; int tcp_c; } ;
typedef TYPE_1__ Net_Crypto ;
typedef int IP_Port ;
typedef TYPE_2__ Crypto_Connection ;


 int add_tcp_relay_connection (int ,int ,int ,int const*) ;
 TYPE_2__* get_crypto_connection (TYPE_1__*,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int add_tcp_relay_peer(Net_Crypto *c, int crypt_connection_id, IP_Port ip_port, const uint8_t *public_key)
{
    Crypto_Connection *conn = get_crypto_connection(c, crypt_connection_id);

    if (conn == 0)
        return -1;

    pthread_mutex_lock(&c->tcp_mutex);
    int ret = add_tcp_relay_connection(c->tcp_c, conn->connection_number_tcp, ip_port, public_key);
    pthread_mutex_unlock(&c->tcp_mutex);
    return ret;
}
