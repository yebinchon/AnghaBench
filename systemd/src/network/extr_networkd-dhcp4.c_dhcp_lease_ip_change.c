
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sd_dhcp_client ;
struct TYPE_5__ {void* dhcp_lease_old; void* dhcp_lease; } ;
typedef TYPE_1__ Link ;


 void* TAKE_PTR (void*) ;
 int dhcp_lease_acquired (int *,TYPE_1__*) ;
 int dhcp_lease_lost (TYPE_1__*) ;
 int sd_dhcp_lease_unref (void*) ;

__attribute__((used)) static int dhcp_lease_ip_change(sd_dhcp_client *client, Link *link) {
        int r;

        link->dhcp_lease_old = TAKE_PTR(link->dhcp_lease);
        r = dhcp_lease_acquired(client, link);
        if (r < 0) {


                sd_dhcp_lease_unref(link->dhcp_lease);
                link->dhcp_lease = TAKE_PTR(link->dhcp_lease_old);
                (void) dhcp_lease_lost(link);
                return r;
        }

        return 0;
}
