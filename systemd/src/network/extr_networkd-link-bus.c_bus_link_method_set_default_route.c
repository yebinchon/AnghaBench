
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int dns_default_route; TYPE_1__* manager; } ;
typedef TYPE_2__ sd_bus_message ;
typedef int sd_bus_error ;
struct TYPE_11__ {int polkit_registry; } ;
typedef TYPE_2__ Link ;


 int CAP_NET_ADMIN ;
 int UID_INVALID ;
 int assert (TYPE_2__*) ;
 int bus_verify_polkit_async (TYPE_2__*,int ,char*,int *,int,int ,int *,int *) ;
 int link_dirty (TYPE_2__*) ;
 int sd_bus_message_read (TYPE_2__*,char*,int*) ;
 int sd_bus_reply_method_return (TYPE_2__*,int *) ;
 int verify_managed_link (TYPE_2__*,int *) ;

int bus_link_method_set_default_route(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Link *l = userdata;
        int r, b;

        assert(message);
        assert(l);

        r = verify_managed_link(l, error);
        if (r < 0)
                return r;

        r = sd_bus_message_read(message, "b", &b);
        if (r < 0)
                return r;

        r = bus_verify_polkit_async(message, CAP_NET_ADMIN,
                                    "org.freedesktop.network1.set-default-route",
                                    ((void*)0), 1, UID_INVALID,
                                    &l->manager->polkit_registry, error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1;

        if (l->dns_default_route != b) {
                l->dns_default_route = b;
                (void) link_dirty(l);
        }

        return sd_bus_reply_method_return(message, ((void*)0));
}
