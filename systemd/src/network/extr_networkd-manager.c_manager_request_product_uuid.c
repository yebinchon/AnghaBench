
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int bus; int duids_requesting_uuid; int links_requesting_uuid; scalar_t__ has_product_uuid; } ;
typedef TYPE_1__ Manager ;
typedef int Link ;
typedef int DUID ;


 int assert (TYPE_1__*) ;
 int assert_se (int *) ;
 int get_product_uuid_handler ;
 int * link_get_duid (int *) ;
 int link_ref (int *) ;
 int log_debug (char*) ;
 int log_oom () ;
 int log_warning_errno (int,char*) ;
 int sd_bus_call_method_async (int ,int *,char*,char*,char*,char*,int ,TYPE_1__*,char*,int) ;
 scalar_t__ sd_bus_is_ready (int ) ;
 int set_ensure_allocated (int *,int *) ;
 int set_put (int ,int *) ;

int manager_request_product_uuid(Manager *m, Link *link) {
        int r;

        assert(m);

        if (m->has_product_uuid)
                return 0;

        log_debug("Requesting product UUID");

        if (link) {
                DUID *duid;

                assert_se(duid = link_get_duid(link));

                r = set_ensure_allocated(&m->links_requesting_uuid, ((void*)0));
                if (r < 0)
                        return log_oom();

                r = set_ensure_allocated(&m->duids_requesting_uuid, ((void*)0));
                if (r < 0)
                        return log_oom();

                r = set_put(m->links_requesting_uuid, link);
                if (r < 0)
                        return log_oom();

                r = set_put(m->duids_requesting_uuid, duid);
                if (r < 0)
                        return log_oom();

                link_ref(link);
        }

        if (!m->bus || sd_bus_is_ready(m->bus) <= 0) {
                log_debug("Not connected to system bus, requesting product UUID later.");
                return 0;
        }

        r = sd_bus_call_method_async(
                        m->bus,
                        ((void*)0),
                        "org.freedesktop.hostname1",
                        "/org/freedesktop/hostname1",
                        "org.freedesktop.hostname1",
                        "GetProductUUID",
                        get_product_uuid_handler,
                        m,
                        "b",
                        0);
        if (r < 0)
                return log_warning_errno(r, "Failed to get product UUID: %m");

        return 0;
}
