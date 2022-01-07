
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
typedef int packet ;
typedef int o_packet ;
struct TYPE_11__ {scalar_t__ num_friends; TYPE_2__* friends_list; int onion_paths_friends; TYPE_1__* c; } ;
struct TYPE_10__ {int ip_port; int data_public_key; scalar_t__ is_stored; int timestamp; } ;
struct TYPE_9__ {int real_public_key; TYPE_3__* clients_list; } ;
struct TYPE_8__ {int self_secret_key; int self_public_key; } ;
typedef int Onion_Path ;
typedef TYPE_3__ Onion_Node ;
typedef TYPE_4__ Onion_Client ;


 scalar_t__ DATA_IN_RESPONSE_MIN_SIZE ;
 scalar_t__ MAX_DATA_REQUEST_SIZE ;
 int MAX_ONION_CLIENTS ;
 int ONION_MAX_PACKET_SIZE ;
 int ONION_NODE_TIMEOUT ;
 int create_data_request (int *,int,int ,int ,int *,int *,int) ;
 int crypto_box_NONCEBYTES ;
 int crypto_box_PUBLICKEYBYTES ;
 int encrypt_data (int ,int ,int *,int const*,scalar_t__,int *) ;
 scalar_t__ is_timeout (int ,int ) ;
 int memcpy (int *,int ,int) ;
 int random_nonce (int *) ;
 int random_path (TYPE_4__*,int *,int ,int *) ;
 scalar_t__ send_onion_packet_tcp_udp (TYPE_4__*,int *,int ,int *,int) ;

int send_onion_data(Onion_Client *onion_c, int friend_num, const uint8_t *data, uint16_t length)
{
    if ((uint32_t)friend_num >= onion_c->num_friends)
        return -1;

    if (length + DATA_IN_RESPONSE_MIN_SIZE > MAX_DATA_REQUEST_SIZE)
        return -1;

    if (length == 0)
        return -1;

    unsigned int i, good_nodes[MAX_ONION_CLIENTS], num_good = 0, num_nodes = 0;
    Onion_Node *list_nodes = onion_c->friends_list[friend_num].clients_list;

    for (i = 0; i < MAX_ONION_CLIENTS; ++i) {
        if (is_timeout(list_nodes[i].timestamp, ONION_NODE_TIMEOUT))
            continue;

        ++num_nodes;

        if (list_nodes[i].is_stored) {
            good_nodes[num_good] = i;
            ++num_good;
        }
    }

    if (num_good < (num_nodes / 4) + 1)
        return -1;

    uint8_t nonce[crypto_box_NONCEBYTES];
    random_nonce(nonce);

    uint8_t packet[DATA_IN_RESPONSE_MIN_SIZE + length];
    memcpy(packet, onion_c->c->self_public_key, crypto_box_PUBLICKEYBYTES);
    int len = encrypt_data(onion_c->friends_list[friend_num].real_public_key, onion_c->c->self_secret_key, nonce, data,
                           length, packet + crypto_box_PUBLICKEYBYTES);

    if ((uint32_t)len + crypto_box_PUBLICKEYBYTES != sizeof(packet))
        return -1;

    unsigned int good = 0;

    for (i = 0; i < num_good; ++i) {
        Onion_Path path;

        if (random_path(onion_c, &onion_c->onion_paths_friends, ~0, &path) == -1)
            continue;

        uint8_t o_packet[ONION_MAX_PACKET_SIZE];
        len = create_data_request(o_packet, sizeof(o_packet), onion_c->friends_list[friend_num].real_public_key,
                                  list_nodes[good_nodes[i]].data_public_key, nonce, packet, sizeof(packet));

        if (len == -1)
            continue;

        if (send_onion_packet_tcp_udp(onion_c, &path, list_nodes[good_nodes[i]].ip_port, o_packet, len) == 0)
            ++good;
    }

    return good;
}
