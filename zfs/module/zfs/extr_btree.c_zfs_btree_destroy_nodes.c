
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int bt_height; int * bt_bulk; scalar_t__ bt_num_elems; int * bt_root; } ;
typedef TYPE_1__ zfs_btree_t ;
typedef int zfs_btree_index_t ;


 int KM_SLEEP ;
 int * kmem_alloc (int,int ) ;
 int kmem_free (int *,int) ;
 void* zfs_btree_first (TYPE_1__*,int *) ;
 void* zfs_btree_next_helper (TYPE_1__*,int *,int *,int ) ;
 int zfs_btree_node_destroy ;

void *
zfs_btree_destroy_nodes(zfs_btree_t *tree, zfs_btree_index_t **cookie)
{
 if (*cookie == ((void*)0)) {
  if (tree->bt_height == -1)
   return (((void*)0));
  *cookie = kmem_alloc(sizeof (**cookie), KM_SLEEP);
  return (zfs_btree_first(tree, *cookie));
 }

 void *rval = zfs_btree_next_helper(tree, *cookie, *cookie,
     zfs_btree_node_destroy);
 if (rval == ((void*)0)) {
  tree->bt_root = ((void*)0);
  tree->bt_height = -1;
  tree->bt_num_elems = 0;
  kmem_free(*cookie, sizeof (**cookie));
  tree->bt_bulk = ((void*)0);
 }
 return (rval);
}
