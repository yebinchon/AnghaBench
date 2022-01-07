
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct TYPE_5__ {int family; } ;
struct TYPE_6__ {TYPE_1__ ip; int member_0; } ;
typedef TYPE_2__ IP_Port ;


 scalar_t__ const NET_PACKET_ANNOUNCE_RESPONSE ;
 scalar_t__ const NET_PACKET_ONION_DATA_RESPONSE ;
 int TCP_FAMILY ;
 int handle_announce_response (void*,TYPE_2__,scalar_t__ const*,int ) ;
 int handle_data_response (void*,TYPE_2__,scalar_t__ const*,int ) ;

__attribute__((used)) static int handle_tcp_onion(void *object, const uint8_t *data, uint16_t length)
{
    if (length == 0)
        return 1;

    IP_Port ip_port = {0};
    ip_port.ip.family = TCP_FAMILY;

    if (data[0] == NET_PACKET_ANNOUNCE_RESPONSE) {
        return handle_announce_response(object, ip_port, data, length);
    } else if (data[0] == NET_PACKET_ONION_DATA_RESPONSE) {
        return handle_data_response(object, ip_port, data, length);
    }

    return 1;
}
