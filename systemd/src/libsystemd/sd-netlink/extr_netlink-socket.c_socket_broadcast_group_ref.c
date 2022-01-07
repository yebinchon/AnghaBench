
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int broadcast_group_refs; } ;
typedef TYPE_1__ sd_netlink ;


 int assert (TYPE_1__*) ;
 unsigned int broadcast_group_get_ref (TYPE_1__*,unsigned int) ;
 int broadcast_group_join (TYPE_1__*,unsigned int) ;
 int broadcast_group_set_ref (TYPE_1__*,unsigned int,unsigned int) ;
 int hashmap_ensure_allocated (int *,int *) ;

int socket_broadcast_group_ref(sd_netlink *nl, unsigned group) {
        unsigned n_ref;
        int r;

        assert(nl);

        n_ref = broadcast_group_get_ref(nl, group);

        n_ref++;

        r = hashmap_ensure_allocated(&nl->broadcast_group_refs, ((void*)0));
        if (r < 0)
                return r;

        r = broadcast_group_set_ref(nl, group, n_ref);
        if (r < 0)
                return r;

        if (n_ref > 1)

                return 0;

        r = broadcast_group_join(nl, group);
        if (r < 0)
                return r;

        return 0;
}
