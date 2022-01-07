
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int spa_scrub_lock; } ;
typedef TYPE_2__ spa_t ;
struct TYPE_11__ {int spic_spc; } ;
typedef TYPE_3__ scan_prefetch_issue_ctx_t ;
struct TYPE_12__ {int scn_prefetch_queue; TYPE_1__* scn_dp; } ;
typedef TYPE_4__ dsl_scan_t ;
struct TYPE_9__ {TYPE_2__* dp_spa; } ;


 TYPE_3__* avl_destroy_nodes (int *,void**) ;
 int kmem_free (TYPE_3__*,int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int scan_prefetch_ctx_rele (int ,TYPE_4__*) ;

__attribute__((used)) static void
scan_ds_prefetch_queue_clear(dsl_scan_t *scn)
{
 spa_t *spa = scn->scn_dp->dp_spa;
 void *cookie = ((void*)0);
 scan_prefetch_issue_ctx_t *spic = ((void*)0);

 mutex_enter(&spa->spa_scrub_lock);
 while ((spic = avl_destroy_nodes(&scn->scn_prefetch_queue,
     &cookie)) != ((void*)0)) {
  scan_prefetch_ctx_rele(spic->spic_spc, scn);
  kmem_free(spic, sizeof (scan_prefetch_issue_ctx_t));
 }
 mutex_exit(&spa->spa_scrub_lock);
}
