
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
struct TYPE_9__ {scalar_t__ port; int ip; } ;
struct TYPE_10__ {TYPE_2__ ip_port; int timestamp; } ;
struct TYPE_12__ {TYPE_3__ assoc4; TYPE_3__ assoc6; int public_key; } ;
struct TYPE_11__ {size_t num_friends; TYPE_1__* friends_list; } ;
struct TYPE_8__ {TYPE_5__* client_list; int public_key; } ;
typedef TYPE_2__ IP_Port ;
typedef TYPE_3__ IPPTsPng ;
typedef TYPE_4__ DHT ;
typedef TYPE_5__ Client_data ;


 int BAD_NODE_TIMEOUT ;
 size_t MAX_FRIEND_CLIENTS ;
 scalar_t__ id_equal (int ,int const*) ;
 int ip_reset (int *) ;
 int is_timeout (int ,int ) ;

int DHT_getfriendip(const DHT *dht, const uint8_t *public_key, IP_Port *ip_port)
{
    uint32_t i, j;

    ip_reset(&ip_port->ip);
    ip_port->port = 0;

    for (i = 0; i < dht->num_friends; ++i) {

        if (id_equal(dht->friends_list[i].public_key, public_key)) {
            for (j = 0; j < MAX_FRIEND_CLIENTS; ++j) {
                Client_data *client = &dht->friends_list[i].client_list[j];

                if (id_equal(client->public_key, public_key)) {
                    IPPTsPng *assoc = ((void*)0);
                    uint32_t a;

                    for (a = 0, assoc = &client->assoc6; a < 2; a++, assoc = &client->assoc4)
                        if (!is_timeout(assoc->timestamp, BAD_NODE_TIMEOUT)) {
                            *ip_port = assoc->ip_port;
                            return 1;
                        }
                }
            }

            return 0;
        }
    }

    return -1;
}
