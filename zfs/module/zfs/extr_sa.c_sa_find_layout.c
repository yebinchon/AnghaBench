
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_13__ {int sa_lock; int sa_layout_num_tree; int sa_layout_hash_tree; } ;
typedef TYPE_1__ sa_os_t ;
struct TYPE_14__ {scalar_t__ lot_hash; scalar_t__ lot_instance; } ;
typedef TYPE_2__ sa_lot_t ;
typedef int sa_attr_type_t ;
struct TYPE_15__ {TYPE_1__* os_sa; } ;
typedef TYPE_3__ objset_t ;
typedef int dmu_tx_t ;
typedef int boolean_t ;
typedef int avl_index_t ;


 TYPE_2__* AVL_NEXT (int *,TYPE_2__*) ;
 int B_FALSE ;
 int B_TRUE ;
 TYPE_2__* avl_find (int *,TYPE_2__*,int *) ;
 int avl_numnodes (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 TYPE_2__* sa_add_layout_entry (TYPE_3__*,int *,int,int ,scalar_t__,int ,int *) ;
 scalar_t__ sa_layout_equal (TYPE_2__*,int *,int) ;

__attribute__((used)) static void
sa_find_layout(objset_t *os, uint64_t hash, sa_attr_type_t *attrs,
    int count, dmu_tx_t *tx, sa_lot_t **lot)
{
 sa_lot_t *tb, tbsearch;
 avl_index_t loc;
 sa_os_t *sa = os->os_sa;
 boolean_t found = B_FALSE;

 mutex_enter(&sa->sa_lock);
 tbsearch.lot_hash = hash;
 tbsearch.lot_instance = 0;
 tb = avl_find(&sa->sa_layout_hash_tree, &tbsearch, &loc);
 if (tb) {
  for (; tb && tb->lot_hash == hash;
      tb = AVL_NEXT(&sa->sa_layout_hash_tree, tb)) {
   if (sa_layout_equal(tb, attrs, count) == 0) {
    found = B_TRUE;
    break;
   }
  }
 }
 if (!found) {
  tb = sa_add_layout_entry(os, attrs, count,
      avl_numnodes(&sa->sa_layout_num_tree), hash, B_TRUE, tx);
 }
 mutex_exit(&sa->sa_lock);
 *lot = tb;
}
