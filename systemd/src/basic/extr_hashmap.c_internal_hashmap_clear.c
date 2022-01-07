
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int (* free_func_t ) (void*) ;
struct TYPE_11__ {int storage; } ;
struct TYPE_13__ {int has_indirect; scalar_t__ type; scalar_t__ n_direct_entries; TYPE_2__ indirect; TYPE_1__* hash_ops; } ;
struct TYPE_12__ {int iterate_list_tail; int iterate_list_head; } ;
struct TYPE_10__ {scalar_t__ free_value; scalar_t__ free_key; } ;
typedef TYPE_3__ OrderedHashmap ;
typedef TYPE_4__ HashmapBase ;


 scalar_t__ HASHMAP_TYPE_ORDERED ;
 int IDX_NIL ;
 int base_set_dirty (TYPE_4__*) ;
 int free (int ) ;
 void* internal_hashmap_first_key_and_value (TYPE_4__*,int,void**) ;
 scalar_t__ internal_hashmap_size (TYPE_4__*) ;
 int reset_direct_storage (TYPE_4__*) ;

void internal_hashmap_clear(HashmapBase *h, free_func_t default_free_key, free_func_t default_free_value) {
        free_func_t free_key, free_value;
        if (!h)
                return;

        free_key = h->hash_ops->free_key ?: default_free_key;
        free_value = h->hash_ops->free_value ?: default_free_value;

        if (free_key || free_value) {





                while (internal_hashmap_size(h) > 0) {
                        void *k = ((void*)0);
                        void *v;

                        v = internal_hashmap_first_key_and_value(h, 1, &k);

                        if (free_key)
                                free_key(k);

                        if (free_value)
                                free_value(v);
                }
        }

        if (h->has_indirect) {
                free(h->indirect.storage);
                h->has_indirect = 0;
        }

        h->n_direct_entries = 0;
        reset_direct_storage(h);

        if (h->type == HASHMAP_TYPE_ORDERED) {
                OrderedHashmap *lh = (OrderedHashmap*) h;
                lh->iterate_list_head = lh->iterate_list_tail = IDX_NIL;
        }

        base_set_dirty(h);
}
