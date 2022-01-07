
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int broadcast_group_refs; } ;
typedef TYPE_1__ sd_netlink ;


 int UINT_TO_PTR (unsigned int) ;
 int assert (TYPE_1__*) ;
 int hashmap_replace (int ,int ,int ) ;

__attribute__((used)) static int broadcast_group_set_ref(sd_netlink *nl, unsigned group, unsigned n_ref) {
        int r;

        assert(nl);

        r = hashmap_replace(nl->broadcast_group_refs, UINT_TO_PTR(group), UINT_TO_PTR(n_ref));
        if (r < 0)
                return r;

        return 0;
}
