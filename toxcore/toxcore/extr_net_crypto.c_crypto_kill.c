
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {scalar_t__ status; int recv_array; int send_array; int ip_portv6; int ip_portv4; int connection_number_tcp; } ;
struct TYPE_9__ {int connections_mutex; int ip_port_list; int tcp_mutex; int tcp_c; int connection_use_counter; } ;
typedef TYPE_1__ Net_Crypto ;
typedef TYPE_2__ Crypto_Connection ;


 scalar_t__ CRYPTO_CONN_ESTABLISHED ;
 int bs_list_remove (int *,int *,int) ;
 int clear_buffer (int *) ;
 int clear_temp_packet (TYPE_1__*,int) ;
 TYPE_2__* get_crypto_connection (TYPE_1__*,int) ;
 int kill_tcp_connection_to (int ,int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int send_kill_packet (TYPE_1__*,int) ;
 int wipe_crypto_connection (TYPE_1__*,int) ;

int crypto_kill(Net_Crypto *c, int crypt_connection_id)
{
    while (1) {
        pthread_mutex_lock(&c->connections_mutex);

        if (!c->connection_use_counter) {
            break;
        }

        pthread_mutex_unlock(&c->connections_mutex);
    }

    Crypto_Connection *conn = get_crypto_connection(c, crypt_connection_id);

    int ret = -1;

    if (conn) {
        if (conn->status == CRYPTO_CONN_ESTABLISHED)
            send_kill_packet(c, crypt_connection_id);

        pthread_mutex_lock(&c->tcp_mutex);
        kill_tcp_connection_to(c->tcp_c, conn->connection_number_tcp);
        pthread_mutex_unlock(&c->tcp_mutex);

        bs_list_remove(&c->ip_port_list, (uint8_t *)&conn->ip_portv4, crypt_connection_id);
        bs_list_remove(&c->ip_port_list, (uint8_t *)&conn->ip_portv6, crypt_connection_id);
        clear_temp_packet(c, crypt_connection_id);
        clear_buffer(&conn->send_array);
        clear_buffer(&conn->recv_array);
        ret = wipe_crypto_connection(c, crypt_connection_id);
    }

    pthread_mutex_unlock(&c->connections_mutex);

    return ret;
}
