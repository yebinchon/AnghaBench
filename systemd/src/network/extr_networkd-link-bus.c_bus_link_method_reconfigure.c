
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* manager; } ;
typedef TYPE_2__ sd_bus_message ;
typedef int sd_bus_error ;
struct TYPE_9__ {int polkit_registry; } ;
typedef TYPE_2__ Link ;


 int CAP_NET_ADMIN ;
 int UID_INVALID ;
 int assert (TYPE_2__*) ;
 int bus_verify_polkit_async (TYPE_2__*,int ,char*,int *,int,int ,int *,int *) ;
 int link_reconfigure (TYPE_2__*,int) ;
 int sd_bus_reply_method_return (TYPE_2__*,int *) ;

int bus_link_method_reconfigure(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Link *l = userdata;
        int r;

        assert(message);
        assert(l);

        r = bus_verify_polkit_async(message, CAP_NET_ADMIN,
                                    "org.freedesktop.network1.reconfigure",
                                    ((void*)0), 1, UID_INVALID,
                                    &l->manager->polkit_registry, error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1;

        r = link_reconfigure(l, 1);
        if (r < 0)
                return r;

        return sd_bus_reply_method_return(message, ((void*)0));
}
