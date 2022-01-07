
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int random_key_bytes ;
struct TYPE_10__ {int self_public_key; int assoc; int dht_harden_ping_array; int dht_ping_array; int self_secret_key; int secret_symmetric_key; int * net; int * ping; } ;
typedef int Networking_Core ;
typedef TYPE_1__ DHT ;


 int CRYPTO_PACKET_HARDENING ;
 int CRYPTO_PACKET_NAT_PING ;
 scalar_t__ DHT_FAKE_FRIEND_NUMBER ;
 int DHT_PING_ARRAY_SIZE ;
 scalar_t__ DHT_addfriend (TYPE_1__*,int *,int ,int ,int ,int ) ;
 int NET_PACKET_CRYPTO ;
 int NET_PACKET_GET_NODES ;
 int NET_PACKET_SEND_NODES_IPV6 ;
 int PING_TIMEOUT ;
 TYPE_1__* calloc (int,int) ;
 int crypto_box_PUBLICKEYBYTES ;
 int crypto_box_keypair (int ,int ) ;
 int cryptopacket_handle ;
 int cryptopacket_registerhandler (TYPE_1__*,int ,int *,TYPE_1__*) ;
 int handle_NATping ;
 int handle_getnodes ;
 int handle_hardening ;
 int handle_sendnodes_ipv6 ;
 int kill_DHT (TYPE_1__*) ;
 int networking_registerhandler (int *,int ,int *,TYPE_1__*) ;
 int new_Assoc_default (int ) ;
 int * new_ping (TYPE_1__*) ;
 int new_symmetric_key (int ) ;
 int ping_array_init (int *,int ,int ) ;
 int randombytes (int *,int) ;
 int unix_time_update () ;

DHT *new_DHT(Networking_Core *net)
{

    unix_time_update();

    if (net == ((void*)0))
        return ((void*)0);

    DHT *dht = calloc(1, sizeof(DHT));

    if (dht == ((void*)0))
        return ((void*)0);

    dht->net = net;
    dht->ping = new_ping(dht);

    if (dht->ping == ((void*)0)) {
        kill_DHT(dht);
        return ((void*)0);
    }

    networking_registerhandler(dht->net, NET_PACKET_GET_NODES, &handle_getnodes, dht);
    networking_registerhandler(dht->net, NET_PACKET_SEND_NODES_IPV6, &handle_sendnodes_ipv6, dht);
    networking_registerhandler(dht->net, NET_PACKET_CRYPTO, &cryptopacket_handle, dht);
    cryptopacket_registerhandler(dht, CRYPTO_PACKET_NAT_PING, &handle_NATping, dht);
    cryptopacket_registerhandler(dht, CRYPTO_PACKET_HARDENING, &handle_hardening, dht);

    new_symmetric_key(dht->secret_symmetric_key);
    crypto_box_keypair(dht->self_public_key, dht->self_secret_key);

    ping_array_init(&dht->dht_ping_array, DHT_PING_ARRAY_SIZE, PING_TIMEOUT);
    ping_array_init(&dht->dht_harden_ping_array, DHT_PING_ARRAY_SIZE, PING_TIMEOUT);



    uint32_t i;

    for (i = 0; i < DHT_FAKE_FRIEND_NUMBER; ++i) {
        uint8_t random_key_bytes[crypto_box_PUBLICKEYBYTES];
        randombytes(random_key_bytes, sizeof(random_key_bytes));

        if (DHT_addfriend(dht, random_key_bytes, 0, 0, 0, 0) != 0) {
            kill_DHT(dht);
            return ((void*)0);
        }
    }

    return dht;
}
