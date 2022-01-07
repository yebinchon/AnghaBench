
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ start_delay; } ;
typedef TYPE_1__ sd_dhcp_client ;


 int client_start_delayed (TYPE_1__*) ;

__attribute__((used)) static int client_start(sd_dhcp_client *client) {
        client->start_delay = 0;
        return client_start_delayed(client);
}
