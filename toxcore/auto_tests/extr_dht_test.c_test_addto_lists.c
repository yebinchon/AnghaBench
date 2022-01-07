
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint8_t ;
typedef int public_key ;
struct TYPE_16__ {int num_friends; TYPE_1__* friends_list; int self_public_key; int close_clientlist; } ;
struct TYPE_15__ {int port; int ip; } ;
struct TYPE_14__ {int public_key; int client_list; } ;
typedef int Networking_Core ;
typedef TYPE_2__ IP_Port ;
typedef int IP ;
typedef TYPE_3__ DHT ;


 int LCLIENT_LIST ;
 int MAX (int ,int ) ;
 int MAX_FRIEND_CLIENTS ;
 int TOX_PORT_DEFAULT ;
 int addto_lists (TYPE_3__*,TYPE_2__,int *) ;
 int ck_assert_msg (int,char*) ;
 int crypto_box_PUBLICKEYBYTES ;
 int kill_DHT (TYPE_3__*) ;
 int kill_networking (int *) ;
 TYPE_3__* new_DHT (int *) ;
 int * new_networking (int ,int) ;
 int randombytes (int *,int) ;
 int test_addto_lists_bad (TYPE_3__*,int ,int ,TYPE_2__*) ;
 int test_addto_lists_good (TYPE_3__*,int ,int ,TYPE_2__*,int ) ;
 int test_addto_lists_update (TYPE_3__*,int ,int ,TYPE_2__*) ;

void test_addto_lists(IP ip)
{
    Networking_Core *net = new_networking(ip, TOX_PORT_DEFAULT);
    ck_assert_msg(net != 0, "Failed to create Networking_Core");

    DHT *dht = new_DHT(net);
    ck_assert_msg(dht != 0, "Failed to create DHT");

    IP_Port ip_port = { .ip = ip, .port = TOX_PORT_DEFAULT };
    uint8_t public_key[crypto_box_PUBLICKEYBYTES];
    int i, used;


    for (i = 0; i < MAX(LCLIENT_LIST, MAX_FRIEND_CLIENTS); ++i) {
        randombytes(public_key, sizeof(public_key));
        used = addto_lists(dht, ip_port, public_key);
        ck_assert_msg(used == dht->num_friends + 1, "Wrong number of added clients with existing ip_port");
    }

    for (i = 0; i < MAX(LCLIENT_LIST, MAX_FRIEND_CLIENTS); ++i) {
        ip_port.port += 1;
        used = addto_lists(dht, ip_port, public_key);
        ck_assert_msg(used == dht->num_friends + 1, "Wrong number of added clients with existing public_key");
    }

    for (i = 0; i < MAX(LCLIENT_LIST, MAX_FRIEND_CLIENTS); ++i) {
        ip_port.port += 1;
        randombytes(public_key, sizeof(public_key));
        used = addto_lists(dht, ip_port, public_key);
        ck_assert_msg(used >= 1, "Wrong number of added clients");
    }



    test_addto_lists_update(dht, dht->close_clientlist, LCLIENT_LIST, &ip_port);

    for (i = 0; i < dht->num_friends; ++i)
        test_addto_lists_update(dht, dht->friends_list[i].client_list, MAX_FRIEND_CLIENTS, &ip_port);


    test_addto_lists_bad(dht, dht->close_clientlist, LCLIENT_LIST, &ip_port);

    for (i = 0; i < dht->num_friends; ++i)
        test_addto_lists_bad(dht, dht->friends_list[i].client_list, MAX_FRIEND_CLIENTS, &ip_port);
    test_addto_lists_good(dht, dht->close_clientlist, LCLIENT_LIST, &ip_port, dht->self_public_key);

    for (i = 0; i < dht->num_friends; ++i)
        test_addto_lists_good(dht, dht->friends_list[i].client_list, MAX_FRIEND_CLIENTS, &ip_port,
                              dht->friends_list[i].public_key);

    kill_DHT(dht);
    kill_networking(net);
}
