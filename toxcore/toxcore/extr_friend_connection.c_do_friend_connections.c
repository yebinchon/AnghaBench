
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_14__ {scalar_t__ family; } ;
struct TYPE_17__ {TYPE_1__ ip; } ;
struct TYPE_16__ {scalar_t__ status; scalar_t__ dht_pk_lastrecv; scalar_t__ dht_ip_port_lastrecv; int crypt_connection_id; scalar_t__ ping_lastsent; scalar_t__ share_relays_lastsent; scalar_t__ ping_lastrecv; TYPE_4__ dht_ip_port; scalar_t__ dht_lock; int dht_temp_pk; } ;
struct TYPE_15__ {scalar_t__ num_cons; int net_crypto; int dht; } ;
typedef TYPE_2__ Friend_Connections ;
typedef TYPE_3__ Friend_Conn ;


 int DHT_delfriend (int ,int ,scalar_t__) ;
 scalar_t__ FRIENDCONN_STATUS_CONNECTED ;
 scalar_t__ FRIENDCONN_STATUS_CONNECTING ;
 scalar_t__ FRIEND_CONNECTION_TIMEOUT ;
 scalar_t__ FRIEND_DHT_TIMEOUT ;
 scalar_t__ FRIEND_PING_INTERVAL ;
 int LANdiscovery (TYPE_2__*) ;
 int MAX_FRIEND_TCP_CONNECTIONS ;
 scalar_t__ SHARE_RELAYS_INTERVAL ;
 int connect_to_saved_tcp_relays (TYPE_2__*,scalar_t__,int) ;
 int crypto_kill (int ,int) ;
 scalar_t__ friend_new_connection (TYPE_2__*,scalar_t__) ;
 TYPE_3__* get_conn (TYPE_2__*,scalar_t__) ;
 int handle_status (TYPE_2__*,scalar_t__,int ) ;
 int send_ping (TYPE_2__*,scalar_t__) ;
 int send_relays (TYPE_2__*,scalar_t__) ;
 int set_direct_ip_port (int ,int,TYPE_4__,int ) ;
 scalar_t__ unix_time () ;

void do_friend_connections(Friend_Connections *fr_c)
{
    uint32_t i;
    uint64_t temp_time = unix_time();

    for (i = 0; i < fr_c->num_cons; ++i) {
        Friend_Conn *friend_con = get_conn(fr_c, i);

        if (friend_con) {
            if (friend_con->status == FRIENDCONN_STATUS_CONNECTING) {
                if (friend_con->dht_pk_lastrecv + FRIEND_DHT_TIMEOUT < temp_time) {
                    if (friend_con->dht_lock) {
                        DHT_delfriend(fr_c->dht, friend_con->dht_temp_pk, friend_con->dht_lock);
                        friend_con->dht_lock = 0;
                    }
                }

                if (friend_con->dht_ip_port_lastrecv + FRIEND_DHT_TIMEOUT < temp_time) {
                    friend_con->dht_ip_port.ip.family = 0;
                }

                if (friend_con->dht_lock) {
                    if (friend_new_connection(fr_c, i) == 0) {
                        set_direct_ip_port(fr_c->net_crypto, friend_con->crypt_connection_id, friend_con->dht_ip_port, 0);
                        connect_to_saved_tcp_relays(fr_c, i, (MAX_FRIEND_TCP_CONNECTIONS / 2));
                    }
                }

            } else if (friend_con->status == FRIENDCONN_STATUS_CONNECTED) {
                if (friend_con->ping_lastsent + FRIEND_PING_INTERVAL < temp_time) {
                    send_ping(fr_c, i);
                }

                if (friend_con->share_relays_lastsent + SHARE_RELAYS_INTERVAL < temp_time) {
                    send_relays(fr_c, i);
                }

                if (friend_con->ping_lastrecv + FRIEND_CONNECTION_TIMEOUT < temp_time) {

                    crypto_kill(fr_c->net_crypto, friend_con->crypt_connection_id);
                    friend_con->crypt_connection_id = -1;
                    handle_status(fr_c, i, 0);
                }
            }
        }
    }

    LANdiscovery(fr_c);
}
