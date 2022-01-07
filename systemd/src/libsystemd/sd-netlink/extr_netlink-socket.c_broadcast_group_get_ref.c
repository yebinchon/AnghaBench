
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int broadcast_group_refs; } ;
typedef TYPE_1__ sd_netlink ;


 int PTR_TO_UINT (int ) ;
 int UINT_TO_PTR (unsigned int) ;
 int assert (TYPE_1__*) ;
 int hashmap_get (int ,int ) ;

__attribute__((used)) static unsigned broadcast_group_get_ref(sd_netlink *nl, unsigned group) {
        assert(nl);

        return PTR_TO_UINT(hashmap_get(nl->broadcast_group_refs, UINT_TO_PTR(group)));
}
