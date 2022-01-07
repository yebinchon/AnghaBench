
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int fs_perm_t ;
struct TYPE_9__ {int fsps_deleg_perm_avl_pool; int fsps_who_perm_avl_pool; int fsps_named_set_avl_pool; int fsps_list; } ;
typedef TYPE_1__ fs_perm_set_t ;
struct TYPE_10__ {int fspn_fsperm; } ;
typedef TYPE_2__ fs_perm_node_t ;


 int free (TYPE_2__*) ;
 int fs_perm_fini (int *) ;
 int uu_avl_pool_destroy (int ) ;
 TYPE_2__* uu_list_first (int ) ;
 TYPE_2__* uu_list_next (int ,TYPE_2__*) ;
 int uu_list_remove (int ,TYPE_2__*) ;

__attribute__((used)) static inline void
fs_perm_set_fini(fs_perm_set_t *fspset)
{
 fs_perm_node_t *node = uu_list_first(fspset->fsps_list);

 while (node != ((void*)0)) {
  fs_perm_node_t *next_node =
      uu_list_next(fspset->fsps_list, node);
  fs_perm_t *fsperm = &node->fspn_fsperm;
  fs_perm_fini(fsperm);
  uu_list_remove(fspset->fsps_list, node);
  free(node);
  node = next_node;
 }

 uu_avl_pool_destroy(fspset->fsps_named_set_avl_pool);
 uu_avl_pool_destroy(fspset->fsps_who_perm_avl_pool);
 uu_avl_pool_destroy(fspset->fsps_deleg_perm_avl_pool);
}
