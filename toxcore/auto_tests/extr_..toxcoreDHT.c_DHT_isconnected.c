
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_7__ {int timestamp; } ;
struct TYPE_6__ {int timestamp; } ;
struct TYPE_9__ {TYPE_2__ assoc6; TYPE_1__ assoc4; } ;
struct TYPE_8__ {TYPE_4__* close_clientlist; } ;
typedef TYPE_3__ DHT ;
typedef TYPE_4__ Client_data ;


 int BAD_NODE_TIMEOUT ;
 size_t LCLIENT_LIST ;
 int is_timeout (int ,int ) ;
 int unix_time_update () ;

int DHT_isconnected(const DHT *dht)
{
    uint32_t i;
    unix_time_update();

    for (i = 0; i < LCLIENT_LIST; ++i) {
        const Client_data *client = &dht->close_clientlist[i];

        if (!is_timeout(client->assoc4.timestamp, BAD_NODE_TIMEOUT) ||
                !is_timeout(client->assoc6.timestamp, BAD_NODE_TIMEOUT))
            return 1;
    }

    return 0;
}
