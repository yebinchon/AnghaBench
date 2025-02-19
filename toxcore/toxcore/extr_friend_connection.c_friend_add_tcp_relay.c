
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


typedef int uint8_t ;
typedef size_t uint16_t ;
struct TYPE_12__ {scalar_t__ family; } ;
struct TYPE_14__ {TYPE_11__ ip; } ;
struct TYPE_17__ {int public_key; TYPE_2__ ip_port; } ;
struct TYPE_13__ {TYPE_11__ ip; } ;
struct TYPE_16__ {unsigned int tcp_relay_counter; int crypt_connection_id; TYPE_5__* tcp_relays; scalar_t__ hosting_tcp_relay; TYPE_1__ dht_ip_port; int dht_temp_pk; } ;
struct TYPE_15__ {int net_crypto; } ;
typedef int Node_format ;
typedef TYPE_2__ IP_Port ;
typedef TYPE_3__ Friend_Connections ;
typedef TYPE_4__ Friend_Conn ;


 unsigned int FRIEND_MAX_STORED_TCP_RELAYS ;
 scalar_t__ Local_ip (TYPE_11__) ;
 int add_tcp_relay_peer (int ,int ,TYPE_2__,int const*) ;
 int crypto_box_PUBLICKEYBYTES ;
 TYPE_4__* get_conn (TYPE_3__*,int) ;
 int memcpy (int ,int const*,int ) ;
 int memset (TYPE_5__*,int ,int) ;
 scalar_t__ public_key_cmp (int ,int const*) ;

int friend_add_tcp_relay(Friend_Connections *fr_c, int friendcon_id, IP_Port ip_port, const uint8_t *public_key)
{
    Friend_Conn *friend_con = get_conn(fr_c, friendcon_id);

    if (!friend_con)
        return -1;


    if (Local_ip(ip_port.ip) && public_key_cmp(friend_con->dht_temp_pk, public_key) == 0) {
        if (friend_con->dht_ip_port.ip.family != 0) {
            ip_port.ip = friend_con->dht_ip_port.ip;
        } else {
            friend_con->hosting_tcp_relay = 0;
        }
    }

    unsigned int i;

    uint16_t index = friend_con->tcp_relay_counter % FRIEND_MAX_STORED_TCP_RELAYS;

    for (i = 0; i < FRIEND_MAX_STORED_TCP_RELAYS; ++i) {
        if (friend_con->tcp_relays[i].ip_port.ip.family != 0
                && public_key_cmp(friend_con->tcp_relays[i].public_key, public_key) == 0) {
            memset(&friend_con->tcp_relays[i], 0, sizeof(Node_format));
        }
    }

    friend_con->tcp_relays[index].ip_port = ip_port;
    memcpy(friend_con->tcp_relays[index].public_key, public_key, crypto_box_PUBLICKEYBYTES);
    ++friend_con->tcp_relay_counter;

    return add_tcp_relay_peer(fr_c->net_crypto, friend_con->crypt_connection_id, ip_port, public_key);
}
