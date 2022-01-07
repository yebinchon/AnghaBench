
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int packet ;
struct TYPE_10__ {int uint32; } ;
struct TYPE_11__ {scalar_t__ family; TYPE_1__ ip4; } ;
struct TYPE_14__ {TYPE_2__ ip; } ;
struct TYPE_13__ {int c; int net; } ;
struct TYPE_12__ {TYPE_5__ ip_port1; } ;
typedef TYPE_3__ Onion_Path ;
typedef TYPE_4__ Onion_Client ;
typedef int IP_Port ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int ONION_MAX_PACKET_SIZE ;
 scalar_t__ TCP_FAMILY ;
 int create_onion_packet (int *,int,TYPE_3__ const*,int ,int const*,int ) ;
 int create_onion_packet_tcp (int *,int,TYPE_3__ const*,int ,int const*,int ) ;
 int send_tcp_onion_request (int ,int ,int *,int) ;
 int sendpacket (int ,TYPE_5__,int *,int) ;

__attribute__((used)) static int send_onion_packet_tcp_udp(const Onion_Client *onion_c, const Onion_Path *path, IP_Port dest,
                                     const uint8_t *data, uint16_t length)
{
    if (path->ip_port1.ip.family == AF_INET || path->ip_port1.ip.family == AF_INET6) {
        uint8_t packet[ONION_MAX_PACKET_SIZE];
        int len = create_onion_packet(packet, sizeof(packet), path, dest, data, length);

        if (len == -1)
            return -1;

        if (sendpacket(onion_c->net, path->ip_port1, packet, len) != len)
            return -1;

        return 0;
    } else if (path->ip_port1.ip.family == TCP_FAMILY) {
        uint8_t packet[ONION_MAX_PACKET_SIZE];
        int len = create_onion_packet_tcp(packet, sizeof(packet), path, dest, data, length);

        if (len == -1)
            return -1;

        return send_tcp_onion_request(onion_c->c, path->ip_port1.ip.ip4.uint32, packet, len);
    } else {
        return -1;
    }
}
