
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int const uint8_t ;
typedef int const uint64_t ;
typedef int const uint32_t ;
typedef int data ;
struct TYPE_3__ {int announce_ping_array; } ;
typedef TYPE_1__ Onion_Client ;
typedef int const IP_Port ;


 int crypto_box_PUBLICKEYBYTES ;
 int memcpy (int const*,int const*,int) ;
 int ping_array_check (int const*,int,int *,int const) ;

__attribute__((used)) static uint32_t check_sendback(Onion_Client *onion_c, const uint8_t *sendback, uint8_t *ret_pubkey,
                               IP_Port *ret_ip_port, uint32_t *path_num)
{
    uint64_t sback;
    memcpy(&sback, sendback, sizeof(uint64_t));
    uint8_t data[sizeof(uint32_t) + crypto_box_PUBLICKEYBYTES + sizeof(IP_Port) + sizeof(uint32_t)];

    if (ping_array_check(data, sizeof(data), &onion_c->announce_ping_array, sback) != sizeof(data))
        return ~0;

    memcpy(ret_pubkey, data + sizeof(uint32_t), crypto_box_PUBLICKEYBYTES);
    memcpy(ret_ip_port, data + sizeof(uint32_t) + crypto_box_PUBLICKEYBYTES, sizeof(IP_Port));
    memcpy(path_num, data + sizeof(uint32_t) + crypto_box_PUBLICKEYBYTES + sizeof(IP_Port), sizeof(uint32_t));

    uint32_t num;
    memcpy(&num, data, sizeof(uint32_t));
    return num;
}
