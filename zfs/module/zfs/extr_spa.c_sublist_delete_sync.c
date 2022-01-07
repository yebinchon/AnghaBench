
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int * to_free; int key; int * ll; int * spa; } ;
typedef TYPE_1__ sublist_delete_arg_t ;
typedef int spa_t ;
typedef int dsl_deadlist_t ;
typedef int dmu_tx_t ;
typedef int bplist_t ;


 int bplist_iterate (int *,int ,int *,int *) ;
 int delete_blkptr_cb ;
 int dsl_deadlist_remove_entry (int *,int ,int *) ;

__attribute__((used)) static void
sublist_delete_sync(void *arg, dmu_tx_t *tx)
{
 sublist_delete_arg_t *sda = arg;
 spa_t *spa = sda->spa;
 dsl_deadlist_t *ll = sda->ll;
 uint64_t key = sda->key;
 bplist_t *to_free = sda->to_free;

 bplist_iterate(to_free, delete_blkptr_cb, spa, tx);
 dsl_deadlist_remove_entry(ll, key, tx);
}
