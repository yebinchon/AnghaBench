
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ num_cons; int dht; } ;
typedef TYPE_1__ Friend_Connections ;


 int LANdiscovery_kill (int ) ;
 int free (TYPE_1__*) ;
 int kill_friend_connection (TYPE_1__*,scalar_t__) ;

void kill_friend_connections(Friend_Connections *fr_c)
{
    if (!fr_c)
        return;

    uint32_t i;

    for (i = 0; i < fr_c->num_cons; ++i) {
        kill_friend_connection(fr_c, i);
    }

    LANdiscovery_kill(fr_c->dht);
    free(fr_c);
}
