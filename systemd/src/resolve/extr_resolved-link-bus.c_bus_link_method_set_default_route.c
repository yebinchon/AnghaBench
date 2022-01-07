
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int default_route; TYPE_6__* manager; } ;
typedef TYPE_1__ sd_bus_message ;
typedef int sd_bus_error ;
struct TYPE_12__ {int polkit_registry; } ;
typedef TYPE_1__ Link ;


 int CAP_NET_ADMIN ;
 int UID_INVALID ;
 int assert (TYPE_1__*) ;
 int bus_verify_polkit_async (TYPE_1__*,int ,char*,int *,int,int ,int *,int *) ;
 int link_save_user (TYPE_1__*) ;
 int manager_write_resolv_conf (TYPE_6__*) ;
 int sd_bus_message_read (TYPE_1__*,char*,int*) ;
 int sd_bus_reply_method_return (TYPE_1__*,int *) ;
 int verify_unmanaged_link (TYPE_1__*,int *) ;

int bus_link_method_set_default_route(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Link *l = userdata;
        int r, b;

        assert(message);
        assert(l);

        r = verify_unmanaged_link(l, error);
        if (r < 0)
                return r;

        r = sd_bus_message_read(message, "b", &b);
        if (r < 0)
                return r;

        r = bus_verify_polkit_async(message, CAP_NET_ADMIN,
                                    "org.freedesktop.resolve1.set-default-route",
                                    ((void*)0), 1, UID_INVALID,
                                    &l->manager->polkit_registry, error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1;

        if (l->default_route != b) {
                l->default_route = b;

                (void) link_save_user(l);
                (void) manager_write_resolv_conf(l->manager);
        }

        return sd_bus_reply_method_return(message, ((void*)0));
}
