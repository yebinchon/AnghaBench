
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sd_bus_message ;
typedef int sd_bus_error ;
struct TYPE_5__ {scalar_t__ dhcp_client; TYPE_1__* manager; int ifname; int network; } ;
struct TYPE_4__ {int polkit_registry; } ;
typedef TYPE_2__ Link ;


 int BUS_ERROR_UNMANAGED_INTERFACE ;
 int CAP_NET_ADMIN ;
 int UID_INVALID ;
 int assert (TYPE_2__*) ;
 int bus_verify_polkit_async (int *,int ,char*,int *,int,int ,int *,int *) ;
 int sd_bus_error_setf (int *,int ,char*,int ) ;
 int sd_bus_reply_method_return (int *,int *) ;
 int sd_dhcp_client_send_renew (scalar_t__) ;

int bus_link_method_renew(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Link *l = userdata;
        int r;

        assert(l);

        if (!l->network)
                return sd_bus_error_setf(error, BUS_ERROR_UNMANAGED_INTERFACE,
                                         "Interface %s is not managed by systemd-networkd",
                                         l->ifname);

        r = bus_verify_polkit_async(message, CAP_NET_ADMIN,
                                    "org.freedesktop.network1.renew",
                                    ((void*)0), 1, UID_INVALID,
                                    &l->manager->polkit_registry, error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1;

        if (l->dhcp_client) {
                r = sd_dhcp_client_send_renew(l->dhcp_client);
                if (r < 0)
                        return r;
        }

        return sd_bus_reply_method_return(message, ((void*)0));
}
