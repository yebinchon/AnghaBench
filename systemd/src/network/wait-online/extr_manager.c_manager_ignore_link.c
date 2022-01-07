
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; int ifname; int ignore; int required_for_online; scalar_t__ interfaces; } ;
typedef TYPE_1__ Manager ;
typedef TYPE_1__ Link ;


 int IFF_LOOPBACK ;
 int assert (TYPE_1__*) ;
 int hashmap_contains (scalar_t__,int ) ;
 int strv_fnmatch (int ,int ,int ) ;

__attribute__((used)) static bool manager_ignore_link(Manager *m, Link *link) {
        assert(m);
        assert(link);


        if (link->flags & IFF_LOOPBACK)
                return 1;


        if (m->interfaces && !hashmap_contains(m->interfaces, link->ifname))
                return 1;

        if (!link->required_for_online)
                return 1;


        return strv_fnmatch(m->ignore, link->ifname, 0);
}
