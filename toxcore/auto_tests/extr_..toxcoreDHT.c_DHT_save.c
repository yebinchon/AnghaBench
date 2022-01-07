
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
struct TYPE_20__ {size_t num_friends; TYPE_8__* friends_list; TYPE_3__* close_clientlist; } ;
struct TYPE_19__ {TYPE_6__* client_list; } ;
struct TYPE_18__ {int ip_port; int public_key; } ;
struct TYPE_16__ {scalar_t__ timestamp; int ip_port; } ;
struct TYPE_15__ {scalar_t__ timestamp; int ip_port; } ;
struct TYPE_17__ {TYPE_5__ assoc6; int public_key; TYPE_4__ assoc4; } ;
struct TYPE_13__ {scalar_t__ timestamp; int ip_port; } ;
struct TYPE_12__ {scalar_t__ timestamp; int ip_port; } ;
struct TYPE_14__ {TYPE_2__ assoc6; int public_key; TYPE_1__ assoc4; } ;
typedef TYPE_7__ Node_format ;
typedef TYPE_8__ DHT_Friend ;
typedef TYPE_9__ DHT ;


 size_t DHT_FAKE_FRIEND_NUMBER ;
 int DHT_STATE_COOKIE_GLOBAL ;
 int DHT_STATE_TYPE_NODES ;
 size_t LCLIENT_LIST ;
 size_t MAX_FRIEND_CLIENTS ;
 int MAX_SAVED_DHT_NODES ;
 int crypto_box_PUBLICKEYBYTES ;
 int host_to_lendian32 (int *,int ) ;
 int memcpy (int ,int ,int ) ;
 int pack_nodes (int *,int,TYPE_7__*,size_t) ;
 int * z_state_save_subheader (int *,int ,int ) ;

void DHT_save(DHT *dht, uint8_t *data)
{
    host_to_lendian32(data, DHT_STATE_COOKIE_GLOBAL);
    data += sizeof(uint32_t);

    uint32_t num, i, j;

    uint8_t *old_data = data;


    data = z_state_save_subheader(data, 0, 0);

    Node_format clients[MAX_SAVED_DHT_NODES];

    for (num = 0, i = 0; i < LCLIENT_LIST; ++i) {
        if (dht->close_clientlist[i].assoc4.timestamp != 0) {
            memcpy(clients[num].public_key, dht->close_clientlist[i].public_key, crypto_box_PUBLICKEYBYTES);
            clients[num].ip_port = dht->close_clientlist[i].assoc4.ip_port;
            ++num;
        }

        if (dht->close_clientlist[i].assoc6.timestamp != 0) {
            memcpy(clients[num].public_key, dht->close_clientlist[i].public_key, crypto_box_PUBLICKEYBYTES);
            clients[num].ip_port = dht->close_clientlist[i].assoc6.ip_port;
            ++num;
        }
    }

    for (i = 0; i < DHT_FAKE_FRIEND_NUMBER && i < dht->num_friends; ++i) {
        DHT_Friend *fr = &dht->friends_list[i];

        for (j = 0; j < MAX_FRIEND_CLIENTS; ++j) {
            if (fr->client_list[j].assoc4.timestamp != 0) {
                memcpy(clients[num].public_key, fr->client_list[j].public_key, crypto_box_PUBLICKEYBYTES);
                clients[num].ip_port = fr->client_list[j].assoc4.ip_port;
                ++num;
            }

            if (fr->client_list[j].assoc6.timestamp != 0) {
                memcpy(clients[num].public_key, fr->client_list[j].public_key, crypto_box_PUBLICKEYBYTES);
                clients[num].ip_port = fr->client_list[j].assoc6.ip_port;
                ++num;
            }
        }
    }

    z_state_save_subheader(old_data, pack_nodes(data, sizeof(Node_format) * num, clients, num), DHT_STATE_TYPE_NODES);
}
