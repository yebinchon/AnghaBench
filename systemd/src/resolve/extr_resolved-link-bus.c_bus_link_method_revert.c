
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {TYPE_5__* manager; } ;
typedef TYPE_1__ sd_bus_message ;
typedef int sd_bus_error ;
struct TYPE_15__ {int polkit_registry; } ;
typedef TYPE_1__ Link ;


 int CAP_NET_ADMIN ;
 int UID_INVALID ;
 int assert (TYPE_1__*) ;
 int bus_verify_polkit_async (TYPE_1__*,int ,char*,int *,int,int ,int *,int *) ;
 int link_add_rrs (TYPE_1__*,int) ;
 int link_allocate_scopes (TYPE_1__*) ;
 int link_flush_settings (TYPE_1__*) ;
 int link_save_user (TYPE_1__*) ;
 int manager_send_changed (TYPE_5__*,char*) ;
 int manager_write_resolv_conf (TYPE_5__*) ;
 int sd_bus_reply_method_return (TYPE_1__*,int *) ;
 int verify_unmanaged_link (TYPE_1__*,int *) ;

int bus_link_method_revert(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Link *l = userdata;
        int r;

        assert(message);
        assert(l);

        r = verify_unmanaged_link(l, error);
        if (r < 0)
                return r;

        r = bus_verify_polkit_async(message, CAP_NET_ADMIN,
                                    "org.freedesktop.resolve1.revert",
                                    ((void*)0), 1, UID_INVALID,
                                    &l->manager->polkit_registry, error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1;

        link_flush_settings(l);
        link_allocate_scopes(l);
        link_add_rrs(l, 0);

        (void) link_save_user(l);
        (void) manager_write_resolv_conf(l->manager);
        (void) manager_send_changed(l->manager, "DNS");

        return sd_bus_reply_method_return(message, ((void*)0));
}
