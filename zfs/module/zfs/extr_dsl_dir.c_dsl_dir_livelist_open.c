
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int objset_t ;
struct TYPE_5__ {int dd_pending_frees; int dd_pending_allocs; int dd_livelist; TYPE_1__* dd_pool; } ;
typedef TYPE_2__ dsl_dir_t ;
struct TYPE_4__ {int dp_spa; int * dp_meta_objset; } ;


 int ASSERT (int ) ;
 int SPA_FEATURE_LIVELIST ;
 int bplist_create (int *) ;
 int dsl_deadlist_open (int *,int *,int ) ;
 int spa_feature_is_active (int ,int ) ;

void
dsl_dir_livelist_open(dsl_dir_t *dd, uint64_t obj)
{
 objset_t *mos = dd->dd_pool->dp_meta_objset;
 ASSERT(spa_feature_is_active(dd->dd_pool->dp_spa,
     SPA_FEATURE_LIVELIST));
 dsl_deadlist_open(&dd->dd_livelist, mos, obj);
 bplist_create(&dd->dd_pending_allocs);
 bplist_create(&dd->dd_pending_frees);
}
