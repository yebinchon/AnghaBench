
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ llmnr; TYPE_1__* manager; } ;
typedef TYPE_2__ sd_bus_message ;
typedef int sd_bus_error ;
struct TYPE_11__ {int polkit_registry; } ;
typedef scalar_t__ ResolveSupport ;
typedef TYPE_2__ Link ;


 int CAP_NET_ADMIN ;
 scalar_t__ RESOLVE_SUPPORT_YES ;
 int SD_BUS_ERROR_INVALID_ARGS ;
 int UID_INVALID ;
 int assert (TYPE_2__*) ;
 int bus_verify_polkit_async (TYPE_2__*,int ,char*,int *,int,int ,int *,int *) ;
 scalar_t__ isempty (char const*) ;
 int link_dirty (TYPE_2__*) ;
 scalar_t__ resolve_support_from_string (char const*) ;
 int sd_bus_error_setf (int *,int ,char*,char const*) ;
 int sd_bus_message_read (TYPE_2__*,char*,char const**) ;
 int sd_bus_reply_method_return (TYPE_2__*,int *) ;
 int verify_managed_link (TYPE_2__*,int *) ;

int bus_link_method_set_llmnr(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Link *l = userdata;
        ResolveSupport mode;
        const char *llmnr;
        int r;

        assert(message);
        assert(l);

        r = verify_managed_link(l, error);
        if (r < 0)
                return r;

        r = sd_bus_message_read(message, "s", &llmnr);
        if (r < 0)
                return r;

        if (isempty(llmnr))
                mode = RESOLVE_SUPPORT_YES;
        else {
                mode = resolve_support_from_string(llmnr);
                if (mode < 0)
                        return sd_bus_error_setf(error, SD_BUS_ERROR_INVALID_ARGS, "Invalid LLMNR setting: %s", llmnr);
        }

        r = bus_verify_polkit_async(message, CAP_NET_ADMIN,
                                    "org.freedesktop.network1.set-llmnr",
                                    ((void*)0), 1, UID_INVALID,
                                    &l->manager->polkit_registry, error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1;

        if (l->llmnr != mode) {
                l->llmnr = mode;
                (void) link_dirty(l);
        }

        return sd_bus_reply_method_return(message, ((void*)0));
}
