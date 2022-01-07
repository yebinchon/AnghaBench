
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct ordered_hashmap_entry {scalar_t__ iterate_next; scalar_t__ iterate_previous; } ;
typedef scalar_t__ dib_raw_t ;
struct TYPE_14__ {unsigned int last_rem_idx; int rem_count; } ;
struct TYPE_16__ {scalar_t__ type; TYPE_1__ debug; } ;
struct TYPE_15__ {scalar_t__ iterate_list_tail; unsigned int iterate_list_head; } ;
typedef TYPE_2__ OrderedHashmap ;
typedef TYPE_3__ HashmapBase ;


 scalar_t__ DIB_RAW_FREE ;
 scalar_t__ HASHMAP_TYPE_ORDERED ;
 scalar_t__ IDX_NIL ;
 scalar_t__ IN_SET (scalar_t__,int ,scalar_t__) ;
 int assert (int) ;
 int base_set_dirty (TYPE_3__*) ;
 unsigned int bucket_calculate_dib (TYPE_3__*,unsigned int,scalar_t__) ;
 int bucket_mark_free (TYPE_3__*,unsigned int) ;
 int bucket_move_entry (TYPE_3__*,int *,unsigned int,unsigned int) ;
 int bucket_set_dib (TYPE_3__*,unsigned int,unsigned int) ;
 scalar_t__* dib_raw_ptr (TYPE_3__*) ;
 int n_entries_dec (TYPE_3__*) ;
 unsigned int next_idx (TYPE_3__*,unsigned int) ;
 struct ordered_hashmap_entry* ordered_bucket_at (TYPE_2__*,unsigned int) ;

__attribute__((used)) static void base_remove_entry(HashmapBase *h, unsigned idx) {
        unsigned left, right, prev, dib;
        dib_raw_t raw_dib, *dibs;

        dibs = dib_raw_ptr(h);
        assert(dibs[idx] != DIB_RAW_FREE);






        left = idx;

        for (right = next_idx(h, left); ; right = next_idx(h, right)) {
                raw_dib = dibs[right];
                if (IN_SET(raw_dib, 0, DIB_RAW_FREE))
                        break;




                assert(left != right);
        }

        if (h->type == HASHMAP_TYPE_ORDERED) {
                OrderedHashmap *lh = (OrderedHashmap*) h;
                struct ordered_hashmap_entry *le = ordered_bucket_at(lh, idx);

                if (le->iterate_next != IDX_NIL)
                        ordered_bucket_at(lh, le->iterate_next)->iterate_previous = le->iterate_previous;
                else
                        lh->iterate_list_tail = le->iterate_previous;

                if (le->iterate_previous != IDX_NIL)
                        ordered_bucket_at(lh, le->iterate_previous)->iterate_next = le->iterate_next;
                else
                        lh->iterate_list_head = le->iterate_next;
        }


        for (prev = left, left = next_idx(h, left); left != right;
             prev = left, left = next_idx(h, left)) {
                dib = bucket_calculate_dib(h, left, dibs[left]);
                assert(dib != 0);
                bucket_move_entry(h, ((void*)0), left, prev);
                bucket_set_dib(h, prev, dib - 1);
        }

        bucket_mark_free(h, prev);
        n_entries_dec(h);
        base_set_dirty(h);
}
