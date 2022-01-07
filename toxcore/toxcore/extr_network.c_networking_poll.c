
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint32_t ;
struct TYPE_5__ {scalar_t__ family; TYPE_1__* packethandlers; int sock; } ;
struct TYPE_4__ {int object; int (* function ) (int ,int ,size_t*,int) ;} ;
typedef TYPE_2__ Networking_Core ;
typedef int IP_Port ;


 int LOGGER_WARNING (char*,size_t) ;
 int MAX_UDP_PACKET_SIZE ;
 int receivepacket (int ,int *,size_t*,int*) ;
 int stub1 (int ,int ,size_t*,int) ;
 int unix_time_update () ;

void networking_poll(Networking_Core *net)
{
    if (net->family == 0)
        return;

    unix_time_update();

    IP_Port ip_port;
    uint8_t data[MAX_UDP_PACKET_SIZE];
    uint32_t length;

    while (receivepacket(net->sock, &ip_port, data, &length) != -1) {
        if (length < 1) continue;

        if (!(net->packethandlers[data[0]].function)) {
            LOGGER_WARNING("[%02u] -- Packet has no handler", data[0]);
            continue;
        }

        net->packethandlers[data[0]].function(net->packethandlers[data[0]].object, ip_port, data, length);
    }
}
