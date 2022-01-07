
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_9__ {scalar_t__ family; } ;
struct TYPE_8__ {TYPE_3__* net; int self_public_key; } ;
struct TYPE_7__ {void* ip; int port; } ;
typedef TYPE_1__ IP_Port ;
typedef TYPE_2__ DHT ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int NET_PACKET_LAN_DISCOVERY ;
 void* broadcast_ip (scalar_t__,scalar_t__) ;
 int crypto_box_PUBLICKEYBYTES ;
 int id_copy (int *,int ) ;
 scalar_t__ ip_isset (void**) ;
 int send_broadcasts (TYPE_3__*,int ,int *,int) ;
 scalar_t__ sendpacket (TYPE_3__*,TYPE_1__,int *,int) ;

int send_LANdiscovery(uint16_t port, DHT *dht)
{
    uint8_t data[crypto_box_PUBLICKEYBYTES + 1];
    data[0] = NET_PACKET_LAN_DISCOVERY;
    id_copy(data + 1, dht->self_public_key);

    send_broadcasts(dht->net, port, data, 1 + crypto_box_PUBLICKEYBYTES);

    int res = -1;
    IP_Port ip_port;
    ip_port.port = port;


    if (dht->net->family == AF_INET6) {
        ip_port.ip = broadcast_ip(AF_INET6, AF_INET6);

        if (ip_isset(&ip_port.ip))
            if (sendpacket(dht->net, ip_port, data, 1 + crypto_box_PUBLICKEYBYTES) > 0)
                res = 1;
    }


    ip_port.ip = broadcast_ip(dht->net->family, AF_INET);

    if (ip_isset(&ip_port.ip))
        if (sendpacket(dht->net, ip_port, data, 1 + crypto_box_PUBLICKEYBYTES))
            res = 1;

    return res;
}
