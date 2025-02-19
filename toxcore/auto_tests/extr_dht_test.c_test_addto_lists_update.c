
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int test_id ;
struct TYPE_19__ {int port; } ;
struct TYPE_16__ {TYPE_9__ ip_port; } ;
struct TYPE_15__ {TYPE_9__ ip_port; } ;
struct TYPE_18__ {TYPE_3__ assoc4; TYPE_2__ assoc6; int public_key; } ;
struct TYPE_14__ {scalar_t__ family; } ;
struct TYPE_17__ {int port; TYPE_1__ ip; } ;
typedef TYPE_4__ IP_Port ;
typedef int DHT ;
typedef TYPE_5__ Client_data ;


 scalar_t__ AF_INET6 ;
 int TOX_PORT_DEFAULT ;
 int addto_lists (int *,TYPE_4__,int*) ;
 int ck_assert_msg (int,char*) ;
 int client_in_list (TYPE_5__*,int,int*) ;
 int crypto_box_PUBLICKEYBYTES ;
 int id_copy (int*,int ) ;
 int ipport_copy (TYPE_4__*,TYPE_9__*) ;
 int ipport_equal (TYPE_4__*,TYPE_9__*) ;
 int rand () ;
 int randombytes (int*,int) ;

void test_addto_lists_update(DHT *dht,
                             Client_data *list,
                             uint32_t length,
                             IP_Port *ip_port)
{
    int used, test, test1, test2, found;
    IP_Port test_ipp;
    uint8_t test_id[crypto_box_PUBLICKEYBYTES];
    uint8_t ipv6 = ip_port->ip.family == AF_INET6 ? 1 : 0;


    test = rand() % length;
    ipport_copy(&test_ipp, ipv6 ? &list[test].assoc6.ip_port : &list[test].assoc4.ip_port);

    randombytes(test_id, sizeof(test_id));
    used = addto_lists(dht, test_ipp, test_id);
    ck_assert_msg(used >= 1, "Wrong number of added clients");

    found = client_in_list(list, length, test_id);
    ck_assert_msg(found >= 0, "Client id is not in the list");
    ck_assert_msg(ipport_equal(&test_ipp, ipv6 ? &list[found].assoc6.ip_port : &list[found].assoc4.ip_port),
                  "Client IP_Port is incorrect");


    test = rand() % length;
    test_ipp.port = rand() % TOX_PORT_DEFAULT;
    id_copy(test_id, list[test].public_key);

    used = addto_lists(dht, test_ipp, test_id);
    ck_assert_msg(used >= 1, "Wrong number of added clients");

    ck_assert_msg(client_in_list(list, length, test_id) == test, "Client id is not in the list");
    ck_assert_msg(ipport_equal(&test_ipp, ipv6 ? &list[test].assoc6.ip_port : &list[test].assoc4.ip_port),
                  "Client IP_Port is incorrect");


    test1 = rand() % (length / 2);
    test2 = rand() % (length / 2) + length / 2;

    ipport_copy(&test_ipp, ipv6 ? &list[test1].assoc6.ip_port : &list[test1].assoc4.ip_port);
    id_copy(test_id, list[test2].public_key);

    if (ipv6) list[test2].assoc6.ip_port.port = -1;
    else list[test2].assoc4.ip_port.port = -1;

    used = addto_lists(dht, test_ipp, test_id);
    ck_assert_msg(used >= 1, "Wrong number of added clients");
    ck_assert_msg(client_in_list(list, length, test_id) == test2, "Client id is not in the list");
    ck_assert_msg(ipport_equal(&test_ipp, ipv6 ? &list[test2].assoc6.ip_port : &list[test2].assoc4.ip_port),
                  "Client IP_Port is incorrect");


    test1 = rand() % (length / 2);
    test2 = rand() % (length / 2) + length / 2;

    ipport_copy(&test_ipp, ipv6 ? &list[test2].assoc6.ip_port : &list[test2].assoc4.ip_port);
    id_copy(test_id, list[test1].public_key);

    if (ipv6) list[test1].assoc6.ip_port.port = -1;
    else list[test1].assoc4.ip_port.port = -1;

    used = addto_lists(dht, test_ipp, test_id);
    ck_assert_msg(used >= 1, "Wrong number of added clients");
    ck_assert_msg(client_in_list(list, length, test_id) == test1, "Client id is not in the list");
    ck_assert_msg(ipport_equal(&test_ipp, ipv6 ? &list[test1].assoc6.ip_port : &list[test1].assoc4.ip_port),
                  "Client IP_Port is incorrect");
}
