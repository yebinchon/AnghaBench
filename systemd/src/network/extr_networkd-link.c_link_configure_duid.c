
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int duids_requesting_uuid; int links_requesting_uuid; int product_uuid; scalar_t__ has_product_uuid; struct TYPE_15__* manager; struct TYPE_15__* network; } ;
typedef TYPE_1__ Manager ;
typedef TYPE_1__ Link ;
typedef TYPE_1__ DUID ;


 int ENOMEM ;
 int assert (TYPE_1__*) ;
 int duid_set_uuid (TYPE_1__*,int ) ;
 TYPE_1__* link_get_duid (TYPE_1__*) ;
 int link_ref (TYPE_1__*) ;
 int link_requires_uuid (TYPE_1__*) ;
 int log_link_warning_errno (TYPE_1__*,int,char*) ;
 int log_oom () ;
 int manager_request_product_uuid (TYPE_1__*,TYPE_1__*) ;
 int set_put (int ,TYPE_1__*) ;

__attribute__((used)) static int link_configure_duid(Link *link) {
        Manager *m;
        DUID *duid;
        int r;

        assert(link);
        assert(link->manager);
        assert(link->network);

        m = link->manager;
        duid = link_get_duid(link);

        if (!link_requires_uuid(link))
                return 1;

        if (m->has_product_uuid) {
                (void) duid_set_uuid(duid, m->product_uuid);
                return 1;
        }

        if (!m->links_requesting_uuid) {
                r = manager_request_product_uuid(m, link);
                if (r < 0) {
                        if (r == -ENOMEM)
                                return r;

                        log_link_warning_errno(link, r,
                                               "Failed to get product UUID. Falling back to use machine-app-specific ID as DUID-UUID: %m");
                        return 1;
                }
        } else {
                r = set_put(m->links_requesting_uuid, link);
                if (r < 0)
                        return log_oom();

                r = set_put(m->duids_requesting_uuid, duid);
                if (r < 0)
                        return log_oom();

                link_ref(link);
        }

        return 0;
}
