
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sd_dhcp_lease ;
struct TYPE_4__ {int * lease; int state; } ;
typedef TYPE_1__ sd_dhcp_client ;


 int DHCP_STATE_BOUND ;
 int DHCP_STATE_REBINDING ;
 int DHCP_STATE_RENEWING ;
 int DHCP_STATE_SELECTING ;
 int EADDRNOTAVAIL ;
 int EINVAL ;
 int IN_SET (int ,int ,int ,int ,int ) ;
 int assert_return (TYPE_1__*,int ) ;

int sd_dhcp_client_get_lease(sd_dhcp_client *client, sd_dhcp_lease **ret) {
        assert_return(client, -EINVAL);

        if (!IN_SET(client->state, DHCP_STATE_SELECTING, DHCP_STATE_BOUND, DHCP_STATE_RENEWING, DHCP_STATE_REBINDING))
                return -EADDRNOTAVAIL;

        if (ret)
                *ret = client->lease;

        return 0;
}
