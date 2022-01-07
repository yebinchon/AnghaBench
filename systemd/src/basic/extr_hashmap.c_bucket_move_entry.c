
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct swap_entries {int dummy; } ;
struct ordered_hashmap_entry {scalar_t__ iterate_next; unsigned int iterate_previous; } ;
struct hashmap_base_entry {int dummy; } ;
struct TYPE_8__ {int entry_size; } ;
struct TYPE_7__ {size_t type; } ;
struct TYPE_6__ {unsigned int iterate_list_head; unsigned int iterate_list_tail; } ;
typedef TYPE_1__ OrderedHashmap ;
typedef TYPE_2__ HashmapBase ;


 size_t HASHMAP_TYPE_ORDERED ;
 scalar_t__ IDX_NIL ;
 int assert (int) ;
 struct hashmap_base_entry* bucket_at_virtual (TYPE_2__*,struct swap_entries*,unsigned int) ;
 TYPE_3__* hashmap_type_info ;
 int memcpy (struct hashmap_base_entry*,struct hashmap_base_entry*,int ) ;

__attribute__((used)) static void bucket_move_entry(HashmapBase *h, struct swap_entries *swap,
                              unsigned from, unsigned to) {
        struct hashmap_base_entry *e_from, *e_to;

        assert(from != to);

        e_from = bucket_at_virtual(h, swap, from);
        e_to = bucket_at_virtual(h, swap, to);

        memcpy(e_to, e_from, hashmap_type_info[h->type].entry_size);

        if (h->type == HASHMAP_TYPE_ORDERED) {
                OrderedHashmap *lh = (OrderedHashmap*) h;
                struct ordered_hashmap_entry *le, *le_to;

                le_to = (struct ordered_hashmap_entry*) e_to;

                if (le_to->iterate_next != IDX_NIL) {
                        le = (struct ordered_hashmap_entry*)
                             bucket_at_virtual(h, swap, le_to->iterate_next);
                        le->iterate_previous = to;
                }

                if (le_to->iterate_previous != IDX_NIL) {
                        le = (struct ordered_hashmap_entry*)
                             bucket_at_virtual(h, swap, le_to->iterate_previous);
                        le->iterate_next = to;
                }

                if (lh->iterate_list_head == from)
                        lh->iterate_list_head = to;
                if (lh->iterate_list_tail == from)
                        lh->iterate_list_tail = to;
        }
}
