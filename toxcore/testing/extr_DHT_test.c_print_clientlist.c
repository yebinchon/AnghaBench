
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_5__ {int assoc6; int assoc4; int public_key; } ;
struct TYPE_4__ {TYPE_2__* close_clientlist; } ;
typedef TYPE_1__ DHT ;
typedef TYPE_2__ Client_data ;


 size_t LCLIENT_LIST ;
 int print_assoc (int *,int) ;
 int print_client_id (int ) ;
 int printf (char*) ;
 scalar_t__ public_key_cmp (int ,int ) ;
 int zeroes_cid ;

void print_clientlist(DHT *dht)
{
    uint32_t i;
    printf("___________________CLOSE________________________________\n");

    for (i = 0; i < LCLIENT_LIST; i++) {
        Client_data *client = &dht->close_clientlist[i];

        if (public_key_cmp(client->public_key, zeroes_cid) == 0)
            continue;

        printf("ClientID: ");
        print_client_id(client->public_key);

        print_assoc(&client->assoc4, 1);
        print_assoc(&client->assoc6, 1);
    }
}
