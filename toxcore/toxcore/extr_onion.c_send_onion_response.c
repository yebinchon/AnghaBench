
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
typedef int packet ;
typedef int Networking_Core ;
typedef int IP_Port ;


 int NET_PACKET_ONION_RECV_3 ;
 scalar_t__ ONION_RESPONSE_MAX_DATA_SIZE ;
 int RETURN_3 ;
 int memcpy (int *,int const*,scalar_t__) ;
 scalar_t__ sendpacket (int *,int ,int *,int) ;

int send_onion_response(Networking_Core *net, IP_Port dest, const uint8_t *data, uint16_t length, const uint8_t *ret)
{
    if (length > ONION_RESPONSE_MAX_DATA_SIZE || length == 0)
        return -1;

    uint8_t packet[1 + RETURN_3 + length];
    packet[0] = NET_PACKET_ONION_RECV_3;
    memcpy(packet + 1, ret, RETURN_3);
    memcpy(packet + 1 + RETURN_3, data, length);

    if ((uint32_t)sendpacket(net, dest, packet, sizeof(packet)) != sizeof(packet))
        return -1;

    return 0;
}
