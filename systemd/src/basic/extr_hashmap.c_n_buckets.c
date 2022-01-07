
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int n_direct_buckets; } ;
struct TYPE_5__ {int n_buckets; } ;
struct TYPE_6__ {size_t type; TYPE_1__ indirect; scalar_t__ has_indirect; } ;
typedef TYPE_2__ HashmapBase ;


 TYPE_4__* hashmap_type_info ;

__attribute__((used)) static unsigned n_buckets(HashmapBase *h) {
        return h->has_indirect ? h->indirect.n_buckets
                               : hashmap_type_info[h->type].n_direct_buckets;
}
