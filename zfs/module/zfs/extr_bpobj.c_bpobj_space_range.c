
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct space_range_arg {scalar_t__ used; scalar_t__ comp; scalar_t__ uncomp; scalar_t__ maxtxg; scalar_t__ mintxg; int spa; int member_0; } ;
struct TYPE_6__ {int bpo_os; scalar_t__ bpo_havecomp; } ;
typedef TYPE_1__ bpobj_t ;


 int ASSERT (int ) ;
 scalar_t__ TXG_INITIAL ;
 scalar_t__ UINT64_MAX ;
 int bpobj_is_open (TYPE_1__*) ;
 int bpobj_iterate_nofree (TYPE_1__*,int ,struct space_range_arg*,int *) ;
 int bpobj_space (TYPE_1__*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int dmu_objset_spa (int ) ;
 int space_range_cb ;

int
bpobj_space_range(bpobj_t *bpo, uint64_t mintxg, uint64_t maxtxg,
    uint64_t *usedp, uint64_t *compp, uint64_t *uncompp)
{
 struct space_range_arg sra = { 0 };
 int err;

 ASSERT(bpobj_is_open(bpo));





 if (mintxg < TXG_INITIAL && maxtxg == UINT64_MAX && bpo->bpo_havecomp)
  return (bpobj_space(bpo, usedp, compp, uncompp));

 sra.spa = dmu_objset_spa(bpo->bpo_os);
 sra.mintxg = mintxg;
 sra.maxtxg = maxtxg;

 err = bpobj_iterate_nofree(bpo, space_range_cb, &sra, ((void*)0));
 *usedp = sra.used;
 *compp = sra.comp;
 *uncompp = sra.uncomp;
 return (err);
}
