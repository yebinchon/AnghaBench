
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int dht; int net_crypto; TYPE_1__* onion_c; } ;
struct TYPE_7__ {int c; int dht; } ;
typedef TYPE_1__ Onion_Client ;
typedef TYPE_2__ Friend_Connections ;


 int LANdiscovery_init (int ) ;
 TYPE_2__* calloc (int,int) ;
 int handle_new_connections ;
 int new_connection_handler (int ,int *,TYPE_2__*) ;

Friend_Connections *new_friend_connections(Onion_Client *onion_c)
{
    if (!onion_c)
        return ((void*)0);

    Friend_Connections *temp = calloc(1, sizeof(Friend_Connections));

    if (temp == ((void*)0))
        return ((void*)0);

    temp->dht = onion_c->dht;
    temp->net_crypto = onion_c->c;
    temp->onion_c = onion_c;

    new_connection_handler(temp->net_crypto, &handle_new_connections, temp);
    LANdiscovery_init(temp->dht);

    return temp;
}
