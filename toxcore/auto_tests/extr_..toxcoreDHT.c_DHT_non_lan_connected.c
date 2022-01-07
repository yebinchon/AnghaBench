
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_9__ {int ip; } ;
struct TYPE_10__ {TYPE_2__ ip_port; int timestamp; } ;
struct TYPE_8__ {int ip; } ;
struct TYPE_11__ {TYPE_1__ ip_port; int timestamp; } ;
struct TYPE_13__ {TYPE_3__ assoc6; TYPE_4__ assoc4; } ;
struct TYPE_12__ {TYPE_6__* close_clientlist; } ;
typedef TYPE_5__ DHT ;
typedef TYPE_6__ Client_data ;


 int BAD_NODE_TIMEOUT ;
 int LAN_ip (int ) ;
 size_t LCLIENT_LIST ;
 int is_timeout (int ,int ) ;
 int unix_time_update () ;

int DHT_non_lan_connected(const DHT *dht)
{
    uint32_t i;
    unix_time_update();

    for (i = 0; i < LCLIENT_LIST; ++i) {
        const Client_data *client = &dht->close_clientlist[i];

        if (!is_timeout(client->assoc4.timestamp, BAD_NODE_TIMEOUT) && LAN_ip(client->assoc4.ip_port.ip) == -1)
            return 1;

        if (!is_timeout(client->assoc6.timestamp, BAD_NODE_TIMEOUT) && LAN_ip(client->assoc6.ip_port.ip) == -1)
            return 1;

    }

    return 0;
}
