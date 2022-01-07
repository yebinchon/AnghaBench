
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int Networking_Core ;


 int broadcast_count ;
 int * broadcast_ip_port ;
 int fetch_broadcast_info (int ) ;
 int sendpacket (int *,int ,int const*,int ) ;

__attribute__((used)) static uint32_t send_broadcasts(Networking_Core *net, uint16_t port, const uint8_t *data, uint16_t length)
{


    if (broadcast_count < 0)
        fetch_broadcast_info(port);

    if (!broadcast_count)
        return 0;

    int i;

    for (i = 0; i < broadcast_count; i++)
        sendpacket(net, broadcast_ip_port[i], data, length);

    return 1;
}
