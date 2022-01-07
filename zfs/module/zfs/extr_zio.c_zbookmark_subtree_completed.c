
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ zb_level; int zb_blkid; } ;
typedef TYPE_1__ zbookmark_phys_t ;
struct TYPE_9__ {int dn_indblkshift; int dn_datablkszsec; } ;
typedef TYPE_2__ dnode_phys_t ;
typedef int boolean_t ;


 int ASSERT (int) ;
 int B_FALSE ;
 unsigned long long DNODE_BLOCK_SHIFT ;
 unsigned long long SPA_MINBLOCKSHIFT ;
 scalar_t__ zbookmark_compare (int ,int ,unsigned long long,int ,TYPE_1__*,TYPE_1__ const*) ;

boolean_t
zbookmark_subtree_completed(const dnode_phys_t *dnp,
    const zbookmark_phys_t *subtree_root, const zbookmark_phys_t *last_block)
{
 zbookmark_phys_t mod_zb = *subtree_root;
 mod_zb.zb_blkid++;
 ASSERT(last_block->zb_level == 0);


 if (dnp == ((void*)0))
  return (B_FALSE);
 return (zbookmark_compare(dnp->dn_datablkszsec, dnp->dn_indblkshift,
     1ULL << (DNODE_BLOCK_SHIFT - SPA_MINBLOCKSHIFT), 0, &mod_zb,
     last_block) <= 0);
}
