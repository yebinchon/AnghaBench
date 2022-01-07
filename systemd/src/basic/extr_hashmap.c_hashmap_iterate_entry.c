
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ put_count; int rem_count; scalar_t__ last_rem_idx; } ;
struct TYPE_11__ {scalar_t__ type; TYPE_1__ debug; } ;
struct TYPE_10__ {int idx; scalar_t__ put_count; int rem_count; scalar_t__ prev_idx; } ;
typedef int OrderedHashmap ;
typedef TYPE_2__ Iterator ;
typedef TYPE_3__ HashmapBase ;


 scalar_t__ HASHMAP_TYPE_ORDERED ;
 scalar_t__ IDX_FIRST ;
 int IDX_NIL ;
 int assert (int) ;
 int hashmap_iterate_in_insertion_order (int *,TYPE_2__*) ;
 int hashmap_iterate_in_internal_order (TYPE_3__*,TYPE_2__*) ;

__attribute__((used)) static unsigned hashmap_iterate_entry(HashmapBase *h, Iterator *i) {
        if (!h) {
                i->idx = IDX_NIL;
                return IDX_NIL;
        }
        return h->type == HASHMAP_TYPE_ORDERED ? hashmap_iterate_in_insertion_order((OrderedHashmap*) h, i)
                                               : hashmap_iterate_in_internal_order(h, i);
}
