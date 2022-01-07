
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct swap_entries {int dummy; } ;
struct TYPE_15__ {int key; } ;
struct TYPE_16__ {TYPE_1__ b; } ;
struct ordered_hashmap_entry {scalar_t__ iterate_next; scalar_t__ iterate_previous; TYPE_2__ p; } ;
struct TYPE_17__ {int max_entries; } ;
struct TYPE_19__ {scalar_t__ type; TYPE_3__ debug; } ;
struct TYPE_18__ {scalar_t__ iterate_list_tail; scalar_t__ iterate_list_head; } ;
typedef TYPE_4__ OrderedHashmap ;
typedef TYPE_5__ HashmapBase ;


 scalar_t__ HASHMAP_TYPE_ORDERED ;
 scalar_t__ IDX_NIL ;
 void* IDX_PUT ;
 int MAX (int ,scalar_t__) ;
 int assert (int) ;
 int assert_se (int) ;
 int base_set_dirty (TYPE_5__*) ;
 struct ordered_hashmap_entry* bucket_at_swap (struct swap_entries*,void*) ;
 unsigned int bucket_hash (TYPE_5__*,int ) ;
 int hashmap_put_robin_hood (TYPE_5__*,unsigned int,struct swap_entries*) ;
 scalar_t__ n_buckets (TYPE_5__*) ;
 scalar_t__ n_entries (TYPE_5__*) ;
 int n_entries_inc (TYPE_5__*) ;
 struct ordered_hashmap_entry* ordered_bucket_at (TYPE_4__*,scalar_t__) ;
 int resize_buckets (TYPE_5__*,int) ;

__attribute__((used)) static int hashmap_base_put_boldly(HashmapBase *h, unsigned idx,
                                   struct swap_entries *swap, bool may_resize) {
        struct ordered_hashmap_entry *new_entry;
        int r;

        assert(idx < n_buckets(h));

        new_entry = bucket_at_swap(swap, IDX_PUT);

        if (may_resize) {
                r = resize_buckets(h, 1);
                if (r < 0)
                        return r;
                if (r > 0)
                        idx = bucket_hash(h, new_entry->p.b.key);
        }
        assert(n_entries(h) < n_buckets(h));

        if (h->type == HASHMAP_TYPE_ORDERED) {
                OrderedHashmap *lh = (OrderedHashmap*) h;

                new_entry->iterate_next = IDX_NIL;
                new_entry->iterate_previous = lh->iterate_list_tail;

                if (lh->iterate_list_tail != IDX_NIL) {
                        struct ordered_hashmap_entry *old_tail;

                        old_tail = ordered_bucket_at(lh, lh->iterate_list_tail);
                        assert(old_tail->iterate_next == IDX_NIL);
                        old_tail->iterate_next = IDX_PUT;
                }

                lh->iterate_list_tail = IDX_PUT;
                if (lh->iterate_list_head == IDX_NIL)
                        lh->iterate_list_head = IDX_PUT;
        }

        assert_se(hashmap_put_robin_hood(h, idx, swap) == 0);

        n_entries_inc(h);




        base_set_dirty(h);

        return 1;
}
