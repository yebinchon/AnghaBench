
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* bpo_phys; int bpo_havesubobj; int bpo_lock; } ;
typedef TYPE_2__ bpobj_t ;
typedef int boolean_t ;
struct TYPE_4__ {scalar_t__ bpo_num_blkptrs; scalar_t__ bpo_num_subobjs; } ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;

__attribute__((used)) static boolean_t
bpobj_is_empty_impl(bpobj_t *bpo)
{
 ASSERT(MUTEX_HELD(&bpo->bpo_lock));
 return (bpo->bpo_phys->bpo_num_blkptrs == 0 &&
     (!bpo->bpo_havesubobj || bpo->bpo_phys->bpo_num_subobjs == 0));
}
