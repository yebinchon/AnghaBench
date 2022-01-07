
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ llmnr_support; scalar_t__ mdns_support; int manager; } ;
typedef TYPE_1__ Link ;


 scalar_t__ RESOLVE_SUPPORT_NO ;
 int assert (TYPE_1__*) ;
 int link_add_rrs (TYPE_1__*,int) ;
 int link_allocate_scopes (TYPE_1__*) ;
 int link_load_user (TYPE_1__*) ;
 int link_read_settings (TYPE_1__*) ;
 int manager_llmnr_start (int ) ;
 int manager_mdns_start (int ) ;

int link_update(Link *l) {
        int r;

        assert(l);

        link_read_settings(l);
        link_load_user(l);

        if (l->llmnr_support != RESOLVE_SUPPORT_NO) {
                r = manager_llmnr_start(l->manager);
                if (r < 0)
                        return r;
        }

        if (l->mdns_support != RESOLVE_SUPPORT_NO) {
                r = manager_mdns_start(l->manager);
                if (r < 0)
                        return r;
        }

        link_allocate_scopes(l);
        link_add_rrs(l, 0);

        return 0;
}
