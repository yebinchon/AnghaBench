
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* manager; } ;
typedef TYPE_2__ sd_bus_message ;
typedef int sd_bus_error ;
typedef TYPE_2__ Transfer ;
struct TYPE_9__ {int polkit_registry; } ;


 int CAP_SYS_ADMIN ;
 int UID_INVALID ;
 int assert (TYPE_2__*) ;
 int bus_verify_polkit_async (TYPE_2__*,int ,char*,int *,int,int ,int *,int *) ;
 int sd_bus_reply_method_return (TYPE_2__*,int *) ;
 int transfer_cancel (TYPE_2__*) ;

__attribute__((used)) static int method_cancel(sd_bus_message *msg, void *userdata, sd_bus_error *error) {
        Transfer *t = userdata;
        int r;

        assert(msg);
        assert(t);

        r = bus_verify_polkit_async(
                        msg,
                        CAP_SYS_ADMIN,
                        "org.freedesktop.import1.pull",
                        ((void*)0),
                        0,
                        UID_INVALID,
                        &t->manager->polkit_registry,
                        error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1;

        r = transfer_cancel(t);
        if (r < 0)
                return r;

        return sd_bus_reply_method_return(msg, ((void*)0));
}
