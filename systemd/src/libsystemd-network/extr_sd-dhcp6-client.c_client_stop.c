
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_dhcp6_client ;


 int DHCP6_CLIENT_DONT_DESTROY (int *) ;
 int assert (int *) ;
 int client_notify (int *,int) ;
 int client_reset (int *) ;

__attribute__((used)) static void client_stop(sd_dhcp6_client *client, int error) {
        DHCP6_CLIENT_DONT_DESTROY(client);

        assert(client);

        client_notify(client, error);

        client_reset(client);
}
