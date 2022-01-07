
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ last_LANdiscovery; int dht; } ;
typedef TYPE_1__ Friend_Connections ;


 scalar_t__ LAN_DISCOVERY_INTERVAL ;
 int TOX_PORT_DEFAULT ;
 int htons (int ) ;
 int send_LANdiscovery (int ,int ) ;
 scalar_t__ unix_time () ;

__attribute__((used)) static void LANdiscovery(Friend_Connections *fr_c)
{
    if (fr_c->last_LANdiscovery + LAN_DISCOVERY_INTERVAL < unix_time()) {
        send_LANdiscovery(htons(TOX_PORT_DEFAULT), fr_c->dht);
        fr_c->last_LANdiscovery = unix_time();
    }
}
