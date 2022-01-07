
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_15__ {int tcp_c; TYPE_10__* dht; } ;
struct TYPE_14__ {TYPE_2__* c; TYPE_10__* dht; int net; int temp_secret_key; int temp_public_key; int secret_symmetric_key; int announce_ping_array; } ;
struct TYPE_13__ {int net; } ;
typedef TYPE_1__ Onion_Client ;
typedef TYPE_2__ Net_Crypto ;


 int ANNOUNCE_ARRAY_SIZE ;
 int ANNOUNCE_TIMEOUT ;
 int CRYPTO_PACKET_DHTPK ;
 int NET_PACKET_ANNOUNCE_RESPONSE ;
 int NET_PACKET_ONION_DATA_RESPONSE ;
 int ONION_DATA_DHTPK ;
 TYPE_1__* calloc (int,int) ;
 int crypto_box_keypair (int ,int ) ;
 int cryptopacket_registerhandler (TYPE_10__*,int ,int *,TYPE_1__*) ;
 int free (TYPE_1__*) ;
 int handle_announce_response ;
 int handle_data_response ;
 int handle_dht_dhtpk ;
 int handle_dhtpk_announce ;
 int handle_tcp_onion ;
 int networking_registerhandler (int ,int ,int *,TYPE_1__*) ;
 int new_symmetric_key (int ) ;
 int oniondata_registerhandler (TYPE_1__*,int ,int *,TYPE_1__*) ;
 scalar_t__ ping_array_init (int *,int ,int ) ;
 int set_onion_packet_tcp_connection_callback (int ,int *,TYPE_1__*) ;

Onion_Client *new_onion_client(Net_Crypto *c)
{
    if (c == ((void*)0))
        return ((void*)0);

    Onion_Client *onion_c = calloc(1, sizeof(Onion_Client));

    if (onion_c == ((void*)0))
        return ((void*)0);

    if (ping_array_init(&onion_c->announce_ping_array, ANNOUNCE_ARRAY_SIZE, ANNOUNCE_TIMEOUT) != 0) {
        free(onion_c);
        return ((void*)0);
    }

    onion_c->dht = c->dht;
    onion_c->net = c->dht->net;
    onion_c->c = c;
    new_symmetric_key(onion_c->secret_symmetric_key);
    crypto_box_keypair(onion_c->temp_public_key, onion_c->temp_secret_key);
    networking_registerhandler(onion_c->net, NET_PACKET_ANNOUNCE_RESPONSE, &handle_announce_response, onion_c);
    networking_registerhandler(onion_c->net, NET_PACKET_ONION_DATA_RESPONSE, &handle_data_response, onion_c);
    oniondata_registerhandler(onion_c, ONION_DATA_DHTPK, &handle_dhtpk_announce, onion_c);
    cryptopacket_registerhandler(onion_c->dht, CRYPTO_PACKET_DHTPK, &handle_dht_dhtpk, onion_c);
    set_onion_packet_tcp_connection_callback(onion_c->c->tcp_c, &handle_tcp_onion, onion_c);

    return onion_c;
}
