
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zfs_btree_t ;
struct TYPE_4__ {int bth_count; int bth_core; } ;
typedef TYPE_1__ zfs_btree_hdr_t ;
struct TYPE_5__ {TYPE_1__** btc_children; } ;
typedef TYPE_2__ zfs_btree_core_t ;
typedef int uint64_t ;
typedef scalar_t__ int64_t ;


 int VERIFY (int ) ;
 int VERIFY0 (scalar_t__) ;

__attribute__((used)) static uint64_t
zfs_btree_verify_height_helper(zfs_btree_t *tree, zfs_btree_hdr_t *hdr,
    int64_t height)
{
 if (!hdr->bth_core) {
  VERIFY0(height);
  return (1);
 }

 VERIFY(hdr->bth_core);
 zfs_btree_core_t *node = (zfs_btree_core_t *)hdr;
 uint64_t ret = 1;
 for (int i = 0; i <= hdr->bth_count; i++) {
  ret += zfs_btree_verify_height_helper(tree,
      node->btc_children[i], height - 1);
 }
 return (ret);
}
