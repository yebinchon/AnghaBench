
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int net; int self_secret_key; } ;
struct TYPE_11__ {int ip_port_list; int current_sleep_time; int secret_symmetric_key; TYPE_2__* dht; int * tcp_c; int connections_mutex; int tcp_mutex; } ;
typedef int TCP_Proxy_Info ;
typedef TYPE_1__ Net_Crypto ;
typedef int IP_Port ;
typedef TYPE_2__ DHT ;


 int CRYPTO_SEND_PACKET_INTERVAL ;
 int NET_PACKET_COOKIE_REQUEST ;
 int NET_PACKET_COOKIE_RESPONSE ;
 int NET_PACKET_CRYPTO_DATA ;
 int NET_PACKET_CRYPTO_HS ;
 int bs_list_init (int *,int,int) ;
 TYPE_1__* calloc (int,int) ;
 scalar_t__ create_recursive_mutex (int *) ;
 int free (TYPE_1__*) ;
 int kill_tcp_connections (int *) ;
 int networking_registerhandler (int ,int ,int *,TYPE_1__*) ;
 int new_keys (TYPE_1__*) ;
 int new_symmetric_key (int ) ;
 int * new_tcp_connections (int ,int *) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;
 int set_oob_packet_tcp_connection_callback (int *,int *,TYPE_1__*) ;
 int set_packet_tcp_connection_callback (int *,int *,TYPE_1__*) ;
 int tcp_data_callback ;
 int tcp_oob_callback ;
 int udp_handle_cookie_request ;
 int udp_handle_packet ;
 int unix_time_update () ;

Net_Crypto *new_net_crypto(DHT *dht, TCP_Proxy_Info *proxy_info)
{
    unix_time_update();

    if (dht == ((void*)0))
        return ((void*)0);

    Net_Crypto *temp = calloc(1, sizeof(Net_Crypto));

    if (temp == ((void*)0))
        return ((void*)0);

    temp->tcp_c = new_tcp_connections(dht->self_secret_key, proxy_info);

    if (temp->tcp_c == ((void*)0)) {
        free(temp);
        return ((void*)0);
    }

    set_packet_tcp_connection_callback(temp->tcp_c, &tcp_data_callback, temp);
    set_oob_packet_tcp_connection_callback(temp->tcp_c, &tcp_oob_callback, temp);

    if (create_recursive_mutex(&temp->tcp_mutex) != 0 ||
            pthread_mutex_init(&temp->connections_mutex, ((void*)0)) != 0) {
        kill_tcp_connections(temp->tcp_c);
        free(temp);
        return ((void*)0);
    }

    temp->dht = dht;

    new_keys(temp);
    new_symmetric_key(temp->secret_symmetric_key);

    temp->current_sleep_time = CRYPTO_SEND_PACKET_INTERVAL;

    networking_registerhandler(dht->net, NET_PACKET_COOKIE_REQUEST, &udp_handle_cookie_request, temp);
    networking_registerhandler(dht->net, NET_PACKET_COOKIE_RESPONSE, &udp_handle_packet, temp);
    networking_registerhandler(dht->net, NET_PACKET_CRYPTO_HS, &udp_handle_packet, temp);
    networking_registerhandler(dht->net, NET_PACKET_CRYPTO_DATA, &udp_handle_packet, temp);

    bs_list_init(&temp->ip_port_list, sizeof(IP_Port), 8);

    return temp;
}
