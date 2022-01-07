
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
typedef int plain ;
struct TYPE_9__ {int num_friends; int last_packet_recv; TYPE_2__* friends_list; TYPE_1__* c; } ;
struct TYPE_8__ {scalar_t__ status; int temp_secret_key; } ;
struct TYPE_7__ {int self_secret_key; } ;
typedef TYPE_3__ Onion_Client ;
typedef int Node_format ;
typedef int IP_Port ;


 int MAX_SENT_NODES ;
 scalar_t__ ONION_ANNOUNCE_RESPONSE_MAX_SIZE ;
 scalar_t__ ONION_ANNOUNCE_RESPONSE_MIN_SIZE ;
 int ONION_ANNOUNCE_SENDBACK_DATA_LENGTH ;
 int ONION_PING_ID_SIZE ;
 int check_sendback (TYPE_3__*,int const*,int *,int *,int*) ;
 int client_add_to_list (TYPE_3__*,int,int *,int ,int ,int *,int) ;
 int client_ping_nodes (TYPE_3__*,int,int *,int,int ) ;
 int crypto_box_NONCEBYTES ;
 int crypto_box_PUBLICKEYBYTES ;
 int decrypt_data (int *,int ,int const*,int const*,scalar_t__,int *) ;
 int unix_time () ;
 int unpack_nodes (int *,int,int ,int *,scalar_t__,int ) ;

__attribute__((used)) static int handle_announce_response(void *object, IP_Port source, const uint8_t *packet, uint16_t length)
{
    Onion_Client *onion_c = object;

    if (length < ONION_ANNOUNCE_RESPONSE_MIN_SIZE || length > ONION_ANNOUNCE_RESPONSE_MAX_SIZE)
        return 1;

    uint16_t len_nodes = length - ONION_ANNOUNCE_RESPONSE_MIN_SIZE;

    uint8_t public_key[crypto_box_PUBLICKEYBYTES];
    IP_Port ip_port;
    uint32_t path_num;
    uint32_t num = check_sendback(onion_c, packet + 1, public_key, &ip_port, &path_num);

    if (num > onion_c->num_friends)
        return 1;

    uint8_t plain[1 + ONION_PING_ID_SIZE + len_nodes];
    int len = -1;

    if (num == 0) {
        len = decrypt_data(public_key, onion_c->c->self_secret_key, packet + 1 + ONION_ANNOUNCE_SENDBACK_DATA_LENGTH,
                           packet + 1 + ONION_ANNOUNCE_SENDBACK_DATA_LENGTH + crypto_box_NONCEBYTES,
                           length - (1 + ONION_ANNOUNCE_SENDBACK_DATA_LENGTH + crypto_box_NONCEBYTES), plain);
    } else {
        if (onion_c->friends_list[num - 1].status == 0)
            return 1;

        len = decrypt_data(public_key, onion_c->friends_list[num - 1].temp_secret_key,
                           packet + 1 + ONION_ANNOUNCE_SENDBACK_DATA_LENGTH,
                           packet + 1 + ONION_ANNOUNCE_SENDBACK_DATA_LENGTH + crypto_box_NONCEBYTES,
                           length - (1 + ONION_ANNOUNCE_SENDBACK_DATA_LENGTH + crypto_box_NONCEBYTES), plain);
    }

    if ((uint32_t)len != sizeof(plain))
        return 1;

    if (client_add_to_list(onion_c, num, public_key, ip_port, plain[0], plain + 1, path_num) == -1)
        return 1;

    if (len_nodes != 0) {
        Node_format nodes[MAX_SENT_NODES];
        int num_nodes = unpack_nodes(nodes, MAX_SENT_NODES, 0, plain + 1 + ONION_PING_ID_SIZE, len_nodes, 0);

        if (num_nodes <= 0)
            return 1;

        if (client_ping_nodes(onion_c, num, nodes, num_nodes, source) == -1)
            return 1;
    }


    onion_c->last_packet_recv = unix_time();
    return 0;
}
