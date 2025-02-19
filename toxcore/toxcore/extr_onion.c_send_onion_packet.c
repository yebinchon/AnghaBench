
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int packet ;
struct TYPE_4__ {int ip_port1; } ;
typedef TYPE_1__ Onion_Path ;
typedef int Networking_Core ;
typedef int IP_Port ;


 int ONION_MAX_PACKET_SIZE ;
 int create_onion_packet (int *,int,TYPE_1__ const*,int ,int const*,int ) ;
 int sendpacket (int *,int ,int *,int) ;

int send_onion_packet(Networking_Core *net, const Onion_Path *path, IP_Port dest, const uint8_t *data, uint16_t length)
{
    uint8_t packet[ONION_MAX_PACKET_SIZE];
    int len = create_onion_packet(packet, sizeof(packet), path, dest, data, length);

    if (len == -1)
        return -1;

    if (sendpacket(net, path->ip_port1, packet, len) != len)
        return -1;

    return 0;
}
