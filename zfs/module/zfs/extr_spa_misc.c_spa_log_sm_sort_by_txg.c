
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sls_txg; } ;
typedef TYPE_1__ spa_log_sm_t ;


 int TREE_CMP (int ,int ) ;

int
spa_log_sm_sort_by_txg(const void *va, const void *vb)
{
 const spa_log_sm_t *a = va;
 const spa_log_sm_t *b = vb;

 return (TREE_CMP(a->sls_txg, b->sls_txg));
}
