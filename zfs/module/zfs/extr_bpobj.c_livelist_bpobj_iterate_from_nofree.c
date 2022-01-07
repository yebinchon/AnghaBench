
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_6__ {TYPE_1__* bpo_phys; scalar_t__ bpo_havesubobj; } ;
typedef TYPE_2__ bpobj_t ;
typedef int bpobj_itor_t ;
typedef int bpobj_info_t ;
struct TYPE_5__ {int bpo_subobjs; } ;


 int B_FALSE ;
 int VERIFY0 (int ) ;
 int * bpi_alloc (TYPE_2__*,int *,int ) ;
 int bpobj_iterate_blkptrs (int *,int ,void*,int ,int *,int ) ;
 int kmem_free (int *,int) ;

int
livelist_bpobj_iterate_from_nofree(bpobj_t *bpo, bpobj_itor_t func, void *arg,
    int64_t start)
{
 if (bpo->bpo_havesubobj)
  VERIFY0(bpo->bpo_phys->bpo_subobjs);
 bpobj_info_t *bpi = bpi_alloc(bpo, ((void*)0), 0);
 int err = bpobj_iterate_blkptrs(bpi, func, arg, start, ((void*)0), B_FALSE);
 kmem_free(bpi, sizeof (bpobj_info_t));
 return (err);
}
