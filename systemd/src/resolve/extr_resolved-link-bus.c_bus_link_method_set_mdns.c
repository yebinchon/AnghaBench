
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ mdns_support; TYPE_1__* manager; } ;
typedef TYPE_2__ sd_bus_message ;
typedef int sd_bus_error ;
struct TYPE_13__ {int polkit_registry; } ;
typedef scalar_t__ ResolveSupport ;
typedef TYPE_2__ Link ;


 int CAP_NET_ADMIN ;
 scalar_t__ RESOLVE_SUPPORT_NO ;
 int SD_BUS_ERROR_INVALID_ARGS ;
 int UID_INVALID ;
 int assert (TYPE_2__*) ;
 int bus_verify_polkit_async (TYPE_2__*,int ,char*,int *,int,int ,int *,int *) ;
 scalar_t__ isempty (char const*) ;
 int link_add_rrs (TYPE_2__*,int) ;
 int link_allocate_scopes (TYPE_2__*) ;
 int link_save_user (TYPE_2__*) ;
 scalar_t__ resolve_support_from_string (char const*) ;
 int sd_bus_error_setf (int *,int ,char*,char const*) ;
 int sd_bus_message_read (TYPE_2__*,char*,char const**) ;
 int sd_bus_reply_method_return (TYPE_2__*,int *) ;
 int verify_unmanaged_link (TYPE_2__*,int *) ;

int bus_link_method_set_mdns(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Link *l = userdata;
        ResolveSupport mode;
        const char *mdns;
        int r;

        assert(message);
        assert(l);

        r = verify_unmanaged_link(l, error);
        if (r < 0)
                return r;

        r = sd_bus_message_read(message, "s", &mdns);
        if (r < 0)
                return r;

        if (isempty(mdns))
                mode = RESOLVE_SUPPORT_NO;
        else {
                mode = resolve_support_from_string(mdns);
                if (mode < 0)
                        return sd_bus_error_setf(error, SD_BUS_ERROR_INVALID_ARGS, "Invalid MulticastDNS setting: %s", mdns);
        }

        r = bus_verify_polkit_async(message, CAP_NET_ADMIN,
                                    "org.freedesktop.resolve1.set-mdns",
                                    ((void*)0), 1, UID_INVALID,
                                    &l->manager->polkit_registry, error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1;

        l->mdns_support = mode;
        link_allocate_scopes(l);
        link_add_rrs(l, 0);

        (void) link_save_user(l);

        return sd_bus_reply_method_return(message, ((void*)0));
}
