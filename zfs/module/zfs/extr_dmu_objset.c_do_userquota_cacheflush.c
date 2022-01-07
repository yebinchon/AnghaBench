
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int uqn_delta; int uqn_id; } ;
typedef TYPE_1__ userquota_node_t ;
struct TYPE_11__ {int uqc_project_deltas; int uqc_group_deltas; int uqc_user_deltas; } ;
typedef TYPE_2__ userquota_cache_t ;
struct TYPE_12__ {int os_userused_lock; } ;
typedef TYPE_3__ objset_t ;
typedef int dmu_tx_t ;


 int ASSERT (int ) ;
 int DMU_GROUPUSED_OBJECT ;
 int DMU_PROJECTUSED_OBJECT ;
 int DMU_USERUSED_OBJECT ;
 int VERIFY0 (int ) ;
 int avl_destroy (int *) ;
 TYPE_1__* avl_destroy_nodes (int *,void**) ;
 scalar_t__ dmu_objset_projectquota_enabled (TYPE_3__*) ;
 int dmu_tx_is_syncing (int *) ;
 int kmem_free (TYPE_1__*,int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int zap_increment (TYPE_3__*,int ,int ,int ,int *) ;

__attribute__((used)) static void
do_userquota_cacheflush(objset_t *os, userquota_cache_t *cache, dmu_tx_t *tx)
{
 void *cookie;
 userquota_node_t *uqn;

 ASSERT(dmu_tx_is_syncing(tx));

 cookie = ((void*)0);
 while ((uqn = avl_destroy_nodes(&cache->uqc_user_deltas,
     &cookie)) != ((void*)0)) {





  mutex_enter(&os->os_userused_lock);
  VERIFY0(zap_increment(os, DMU_USERUSED_OBJECT,
      uqn->uqn_id, uqn->uqn_delta, tx));
  mutex_exit(&os->os_userused_lock);
  kmem_free(uqn, sizeof (*uqn));
 }
 avl_destroy(&cache->uqc_user_deltas);

 cookie = ((void*)0);
 while ((uqn = avl_destroy_nodes(&cache->uqc_group_deltas,
     &cookie)) != ((void*)0)) {
  mutex_enter(&os->os_userused_lock);
  VERIFY0(zap_increment(os, DMU_GROUPUSED_OBJECT,
      uqn->uqn_id, uqn->uqn_delta, tx));
  mutex_exit(&os->os_userused_lock);
  kmem_free(uqn, sizeof (*uqn));
 }
 avl_destroy(&cache->uqc_group_deltas);

 if (dmu_objset_projectquota_enabled(os)) {
  cookie = ((void*)0);
  while ((uqn = avl_destroy_nodes(&cache->uqc_project_deltas,
      &cookie)) != ((void*)0)) {
   mutex_enter(&os->os_userused_lock);
   VERIFY0(zap_increment(os, DMU_PROJECTUSED_OBJECT,
       uqn->uqn_id, uqn->uqn_delta, tx));
   mutex_exit(&os->os_userused_lock);
   kmem_free(uqn, sizeof (*uqn));
  }
  avl_destroy(&cache->uqc_project_deltas);
 }
}
