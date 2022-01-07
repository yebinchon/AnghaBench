
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint64_t ;
struct TYPE_4__ {void* sls_txg; void* sls_sm_obj; } ;
typedef TYPE_1__ spa_log_sm_t ;


 int KM_SLEEP ;
 TYPE_1__* kmem_zalloc (int,int ) ;

__attribute__((used)) static spa_log_sm_t *
spa_log_sm_alloc(uint64_t sm_obj, uint64_t txg)
{
 spa_log_sm_t *sls = kmem_zalloc(sizeof (*sls), KM_SLEEP);
 sls->sls_sm_obj = sm_obj;
 sls->sls_txg = txg;
 return (sls);
}
