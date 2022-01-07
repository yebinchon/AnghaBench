
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* zn_handle; } ;
typedef TYPE_1__ zfs_node_t ;
struct TYPE_12__ {int zfs_hdl; } ;
typedef TYPE_2__ zfs_handle_t ;
typedef int avl_tree_t ;


 int avl_add (int *,TYPE_1__*) ;
 TYPE_1__* avl_find (int *,TYPE_1__*,int *) ;
 int avl_remove (int *,TYPE_1__*) ;
 int free (TYPE_1__*) ;
 TYPE_1__* zfs_alloc (int ,int) ;
 int zfs_close (TYPE_2__*) ;

__attribute__((used)) static int
zfs_sort_snaps(zfs_handle_t *zhp, void *data)
{
 avl_tree_t *avl = data;
 zfs_node_t *node;
 zfs_node_t search;

 search.zn_handle = zhp;
 node = avl_find(avl, &search, ((void*)0));
 if (node) {






  zfs_close(node->zn_handle);
  avl_remove(avl, node);
  free(node);
 }

 node = zfs_alloc(zhp->zfs_hdl, sizeof (zfs_node_t));
 node->zn_handle = zhp;
 avl_add(avl, node);

 return (0);
}
