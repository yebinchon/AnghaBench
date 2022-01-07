
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_netlink ;


 int assert (int) ;
 unsigned int broadcast_group_get_ref (int *,unsigned int) ;
 int broadcast_group_leave (int *,unsigned int) ;
 int broadcast_group_set_ref (int *,unsigned int,unsigned int) ;

int socket_broadcast_group_unref(sd_netlink *nl, unsigned group) {
        unsigned n_ref;
        int r;

        assert(nl);

        n_ref = broadcast_group_get_ref(nl, group);

        assert(n_ref > 0);

        n_ref--;

        r = broadcast_group_set_ref(nl, group, n_ref);
        if (r < 0)
                return r;

        if (n_ref > 0)

                return 0;

        r = broadcast_group_leave(nl, group);
        if (r < 0)
                return r;

        return 0;
}
