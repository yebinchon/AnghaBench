
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int mempool; } ;
struct TYPE_6__ {scalar_t__ n_direct_entries; size_t type; scalar_t__ from_pool; int debug; int has_indirect; } ;
typedef TYPE_1__ HashmapBase ;


 int LIST_REMOVE (int ,int ,int *) ;
 int assert (int) ;
 int assert_se (int) ;
 int debug_list ;
 int free (TYPE_1__*) ;
 int hashmap_debug_list ;
 int hashmap_debug_list_mutex ;
 TYPE_3__* hashmap_type_info ;
 int is_main_thread () ;
 int mempool_free_tile (int ,TYPE_1__*) ;
 scalar_t__ pthread_mutex_lock (int *) ;
 scalar_t__ pthread_mutex_unlock (int *) ;

__attribute__((used)) static void hashmap_free_no_clear(HashmapBase *h) {
        assert(!h->has_indirect);
        assert(h->n_direct_entries == 0);







        if (h->from_pool) {

                assert_se(is_main_thread());
                mempool_free_tile(hashmap_type_info[h->type].mempool, h);
        } else
                free(h);
}
