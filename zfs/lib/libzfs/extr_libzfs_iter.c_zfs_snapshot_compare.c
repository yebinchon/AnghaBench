
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * zn_handle; } ;
typedef TYPE_1__ zfs_node_t ;
typedef int zfs_handle_t ;
typedef int uint64_t ;


 int TREE_CMP (int ,int ) ;
 int ZFS_PROP_CREATETXG ;
 int zfs_prop_get_int (int *,int ) ;

__attribute__((used)) static int
zfs_snapshot_compare(const void *larg, const void *rarg)
{
 zfs_handle_t *l = ((zfs_node_t *)larg)->zn_handle;
 zfs_handle_t *r = ((zfs_node_t *)rarg)->zn_handle;
 uint64_t lcreate, rcreate;





 lcreate = zfs_prop_get_int(l, ZFS_PROP_CREATETXG);
 rcreate = zfs_prop_get_int(r, ZFS_PROP_CREATETXG);

 return (TREE_CMP(lcreate, rcreate));
}
