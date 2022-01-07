
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fd; } ;
typedef TYPE_1__ sd_dhcp6_client ;


 int EINVAL ;
 int SD_DHCP6_CLIENT_EVENT_STOP ;
 int assert_return (TYPE_1__*,int ) ;
 int client_stop (TYPE_1__*,int ) ;
 int safe_close (int ) ;

int sd_dhcp6_client_stop(sd_dhcp6_client *client) {
        assert_return(client, -EINVAL);

        client_stop(client, SD_DHCP6_CLIENT_EVENT_STOP);

        client->fd = safe_close(client->fd);

        return 0;
}
