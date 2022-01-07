
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_11__ {int assoc6; int assoc4; int public_key; } ;
struct TYPE_10__ {int num_friends; TYPE_1__* friends_list; } ;
struct TYPE_9__ {int port; int ip; } ;
struct TYPE_8__ {TYPE_4__* client_list; int public_key; } ;
typedef TYPE_2__ IP_Port ;
typedef TYPE_3__ DHT ;
typedef TYPE_4__ Client_data ;


 int DHT_getfriendip (TYPE_3__*,int ,TYPE_2__*) ;
 int MAX_FRIEND_CLIENTS ;
 char* ip_ntoa (int *) ;
 int ntohs (int ) ;
 int print_assoc (int *,int ) ;
 int print_client_id (int ) ;
 int printf (char*,...) ;
 scalar_t__ public_key_cmp (int ,int ) ;
 int zeroes_cid ;

void print_friendlist(DHT *dht)
{
    uint32_t i, k;
    IP_Port p_ip;
    printf("_________________FRIENDS__________________________________\n");

    for (k = 0; k < dht->num_friends; k++) {
        printf("FRIEND %u\n", k);
        printf("ID: ");

        print_client_id(dht->friends_list[k].public_key);

        int friendok = DHT_getfriendip(dht, dht->friends_list[k].public_key, &p_ip);
        printf("\nIP: %s:%u (%d)", ip_ntoa(&p_ip.ip), ntohs(p_ip.port), friendok);

        printf("\nCLIENTS IN LIST:\n\n");

        for (i = 0; i < MAX_FRIEND_CLIENTS; i++) {
            Client_data *client = &dht->friends_list[k].client_list[i];

            if (public_key_cmp(client->public_key, zeroes_cid) == 0)
                continue;

            printf("ClientID: ");
            print_client_id(client->public_key);

            print_assoc(&client->assoc4, 0);
            print_assoc(&client->assoc6, 0);
        }
    }
}
