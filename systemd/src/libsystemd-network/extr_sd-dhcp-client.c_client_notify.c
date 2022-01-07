
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* callback ) (TYPE_1__*,int,int ) ;int userdata; } ;
typedef TYPE_1__ sd_dhcp_client ;


 int assert (TYPE_1__*) ;
 int stub1 (TYPE_1__*,int,int ) ;

__attribute__((used)) static int client_notify(sd_dhcp_client *client, int event) {
        assert(client);

        if (client->callback)
                return client->callback(client, event, client->userdata);

        return 0;
}
