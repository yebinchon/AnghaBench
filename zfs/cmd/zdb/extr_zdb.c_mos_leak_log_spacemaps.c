
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
typedef int spacemap_zap ;
struct TYPE_8__ {int spa_sm_logs_by_txg; } ;
typedef TYPE_1__ spa_t ;
struct TYPE_9__ {int sls_sm_obj; } ;
typedef TYPE_2__ spa_log_sm_t ;


 int ASSERT0 (int) ;
 TYPE_2__* AVL_NEXT (int *,TYPE_2__*) ;
 int DMU_POOL_DIRECTORY_OBJECT ;
 int DMU_POOL_LOG_SPACEMAP_ZAP ;
 int ENOENT ;
 TYPE_2__* avl_first (int *) ;
 int mos_obj_refd (int ) ;
 int spa_meta_objset (TYPE_1__*) ;
 int zap_lookup (int ,int ,int ,int,int,int *) ;

__attribute__((used)) static void
mos_leak_log_spacemaps(spa_t *spa)
{
 uint64_t spacemap_zap;
 int error = zap_lookup(spa_meta_objset(spa),
     DMU_POOL_DIRECTORY_OBJECT, DMU_POOL_LOG_SPACEMAP_ZAP,
     sizeof (spacemap_zap), 1, &spacemap_zap);
 if (error == ENOENT)
  return;
 ASSERT0(error);

 mos_obj_refd(spacemap_zap);
 for (spa_log_sm_t *sls = avl_first(&spa->spa_sm_logs_by_txg);
     sls; sls = AVL_NEXT(&spa->spa_sm_logs_by_txg, sls))
  mos_obj_refd(sls->sls_sm_obj);
}
