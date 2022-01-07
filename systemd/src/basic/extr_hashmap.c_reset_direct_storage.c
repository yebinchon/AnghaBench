
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hashmap_type_info {int entry_size; int n_direct_buckets; } ;
typedef int dib_raw_t ;
struct TYPE_4__ {int storage; } ;
struct TYPE_5__ {size_t type; TYPE_1__ direct; int has_indirect; } ;
typedef TYPE_2__ HashmapBase ;


 int DIB_RAW_INIT ;
 int assert (int) ;
 struct hashmap_type_info* hashmap_type_info ;
 void* mempset (int ,int ,int) ;
 int memset (void*,int ,int) ;

__attribute__((used)) static void reset_direct_storage(HashmapBase *h) {
        const struct hashmap_type_info *hi = &hashmap_type_info[h->type];
        void *p;

        assert(!h->has_indirect);

        p = mempset(h->direct.storage, 0, hi->entry_size * hi->n_direct_buckets);
        memset(p, DIB_RAW_INIT, sizeof(dib_raw_t) * hi->n_direct_buckets);
}
