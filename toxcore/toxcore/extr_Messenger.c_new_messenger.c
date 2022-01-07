
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int self_secret_key; } ;
struct TYPE_12__ {scalar_t__ tcp_server_port; int ipv6enabled; int proxy_info; int * port_range; scalar_t__ udp_disabled; } ;
struct TYPE_13__ {int fr; int fr_c; TYPE_1__ options; int * net; TYPE_4__* dht; int * net_crypto; scalar_t__ onion_c; scalar_t__ onion_a; scalar_t__ onion; int * tcp_server; } ;
typedef int Networking_Core ;
typedef TYPE_1__ Messenger_Options ;
typedef TYPE_2__ Messenger ;
typedef int IP ;


 unsigned int MESSENGER_ERROR_NONE ;
 unsigned int MESSENGER_ERROR_OTHER ;
 unsigned int MESSENGER_ERROR_PORT ;
 unsigned int MESSENGER_ERROR_TCP_SERVER ;
 void* calloc (int,int) ;
 int free (TYPE_2__*) ;
 int friend_already_added ;
 int friendreq_init (int *,int ) ;
 int ip_init (int *,int ) ;
 int kill_DHT (TYPE_4__*) ;
 int kill_friend_connections (int ) ;
 int kill_net_crypto (int *) ;
 int kill_networking (int *) ;
 int kill_onion (scalar_t__) ;
 int kill_onion_announce (scalar_t__) ;
 int kill_onion_client (scalar_t__) ;
 TYPE_4__* new_DHT (int *) ;
 int * new_TCP_server (int ,int,scalar_t__*,int ,scalar_t__) ;
 int new_friend_connections (scalar_t__) ;
 int * new_net_crypto (TYPE_4__*,int *) ;
 int * new_networking_ex (int ,int ,int ,unsigned int*) ;
 scalar_t__ new_onion (TYPE_4__*) ;
 scalar_t__ new_onion_announce (TYPE_4__*) ;
 scalar_t__ new_onion_client (int *) ;
 int random_int () ;
 int set_filter_function (int *,int *,TYPE_2__*) ;
 int set_nospam (int *,int ) ;

Messenger *new_messenger(Messenger_Options *options, unsigned int *error)
{
    Messenger *m = calloc(1, sizeof(Messenger));

    if (error)
        *error = MESSENGER_ERROR_OTHER;

    if ( ! m )
        return ((void*)0);

    unsigned int net_err = 0;

    if (options->udp_disabled) {

        m->net = calloc(1, sizeof(Networking_Core));
    } else {
        IP ip;
        ip_init(&ip, options->ipv6enabled);
        m->net = new_networking_ex(ip, options->port_range[0], options->port_range[1], &net_err);
    }

    if (m->net == ((void*)0)) {
        free(m);

        if (error && net_err == 1) {
            *error = MESSENGER_ERROR_PORT;
        }

        return ((void*)0);
    }

    m->dht = new_DHT(m->net);

    if (m->dht == ((void*)0)) {
        kill_networking(m->net);
        free(m);
        return ((void*)0);
    }

    m->net_crypto = new_net_crypto(m->dht, &options->proxy_info);

    if (m->net_crypto == ((void*)0)) {
        kill_networking(m->net);
        kill_DHT(m->dht);
        free(m);
        return ((void*)0);
    }

    m->onion = new_onion(m->dht);
    m->onion_a = new_onion_announce(m->dht);
    m->onion_c = new_onion_client(m->net_crypto);
    m->fr_c = new_friend_connections(m->onion_c);

    if (!(m->onion && m->onion_a && m->onion_c)) {
        kill_friend_connections(m->fr_c);
        kill_onion(m->onion);
        kill_onion_announce(m->onion_a);
        kill_onion_client(m->onion_c);
        kill_net_crypto(m->net_crypto);
        kill_DHT(m->dht);
        kill_networking(m->net);
        free(m);
        return ((void*)0);
    }

    if (options->tcp_server_port) {
        m->tcp_server = new_TCP_server(options->ipv6enabled, 1, &options->tcp_server_port, m->dht->self_secret_key, m->onion);

        if (m->tcp_server == ((void*)0)) {
            kill_friend_connections(m->fr_c);
            kill_onion(m->onion);
            kill_onion_announce(m->onion_a);
            kill_onion_client(m->onion_c);
            kill_net_crypto(m->net_crypto);
            kill_DHT(m->dht);
            kill_networking(m->net);
            free(m);

            if (error)
                *error = MESSENGER_ERROR_TCP_SERVER;

            return ((void*)0);
        }
    }

    m->options = *options;
    friendreq_init(&(m->fr), m->fr_c);
    set_nospam(&(m->fr), random_int());
    set_filter_function(&(m->fr), &friend_already_added, m);

    if (error)
        *error = MESSENGER_ERROR_NONE;

    return m;
}
