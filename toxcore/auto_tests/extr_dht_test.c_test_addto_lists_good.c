
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int public_key ;
struct TYPE_5__ {scalar_t__ family; } ;
struct TYPE_6__ {int port; TYPE_1__ ip; } ;
typedef TYPE_2__ IP_Port ;
typedef int DHT ;
typedef int Client_data ;


 scalar_t__ AF_INET6 ;
 int addto_lists (int *,TYPE_2__,int*) ;
 int ck_assert_msg (int,char*) ;
 int client_in_list (int *,int ,int*) ;
 int crypto_box_PUBLICKEYBYTES ;
 scalar_t__ is_furthest (int const*,int *,int ,int*) ;
 int mark_all_good (int *,int ,int) ;
 int randombytes (int*,int) ;

void test_addto_lists_good(DHT *dht,
                           Client_data *list,
                           uint32_t length,
                           IP_Port *ip_port,
                           const uint8_t *comp_client_id)
{
    uint8_t public_key[crypto_box_PUBLICKEYBYTES];
    uint8_t ipv6 = ip_port->ip.family == AF_INET6 ? 1 : 0;

    mark_all_good(list, length, ipv6);


    do {
        randombytes(public_key, sizeof(public_key));
    } while (is_furthest(comp_client_id, list, length, public_key));

    ip_port->port += 1;
    addto_lists(dht, *ip_port, public_key);
    ck_assert_msg(client_in_list(list, length, public_key) >= 0, "Good client id is not in the list");


    do {
        randombytes(public_key, sizeof(public_key));
    } while (!is_furthest(comp_client_id, list, length, public_key));

    ip_port->port += 1;
    addto_lists(dht, *ip_port, public_key);
    ck_assert_msg(client_in_list(list, length, public_key) == -1, "Good client id is in the list");
}
