
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
typedef int data ;
struct TYPE_5__ {TYPE_1__* entries; int net; } ;
struct TYPE_4__ {int ret; int ret_ip_port; } ;
typedef TYPE_2__ Onion_Announce ;
typedef int IP_Port ;


 scalar_t__ DATA_REQUEST_MIN_SIZE_RECV ;
 int NET_PACKET_ONION_DATA_RESPONSE ;
 scalar_t__ ONION_MAX_PACKET_SIZE ;
 scalar_t__ ONION_RETURN_3 ;
 scalar_t__ crypto_box_PUBLICKEYBYTES ;
 int in_entries (TYPE_2__*,int const*) ;
 int memcpy (int *,int const*,scalar_t__) ;
 int send_onion_response (int ,int ,int *,int,int ) ;

__attribute__((used)) static int handle_data_request(void *object, IP_Port source, const uint8_t *packet, uint16_t length)
{
    Onion_Announce *onion_a = object;

    if (length <= DATA_REQUEST_MIN_SIZE_RECV)
        return 1;

    if (length > ONION_MAX_PACKET_SIZE)
        return 1;

    int index = in_entries(onion_a, packet + 1);

    if (index == -1)
        return 1;

    uint8_t data[length - (crypto_box_PUBLICKEYBYTES + ONION_RETURN_3)];
    data[0] = NET_PACKET_ONION_DATA_RESPONSE;
    memcpy(data + 1, packet + 1 + crypto_box_PUBLICKEYBYTES, length - (1 + crypto_box_PUBLICKEYBYTES + ONION_RETURN_3));

    if (send_onion_response(onion_a->net, onion_a->entries[index].ret_ip_port, data, sizeof(data),
                            onion_a->entries[index].ret) == -1)
        return 1;

    return 0;
}
