
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef int zbookmark_phys_t ;
struct TYPE_25__ {int spa_scrub_lock; int spa_scrub_io_cv; } ;
typedef TYPE_3__ spa_t ;
struct TYPE_29__ {scalar_t__ blk_birth; } ;
struct TYPE_26__ {int spic_zb; TYPE_7__ spic_bp; TYPE_5__* spic_spc; } ;
typedef TYPE_4__ scan_prefetch_issue_ctx_t ;
struct TYPE_27__ {TYPE_6__* spc_scn; } ;
typedef TYPE_5__ scan_prefetch_ctx_t ;
struct TYPE_24__ {scalar_t__ scn_cur_min_txg; } ;
struct TYPE_28__ {int scn_prefetch_queue; TYPE_2__ scn_phys; TYPE_1__* scn_dp; } ;
typedef TYPE_6__ dsl_scan_t ;
typedef TYPE_7__ blkptr_t ;
typedef int avl_index_t ;
struct TYPE_23__ {TYPE_3__* dp_spa; } ;


 scalar_t__ BP_GET_LEVEL (TYPE_7__*) ;
 scalar_t__ BP_GET_TYPE (TYPE_7__*) ;
 scalar_t__ BP_IS_HOLE (TYPE_7__*) ;
 scalar_t__ BP_IS_REDACTED (TYPE_7__*) ;
 scalar_t__ DMU_OT_DNODE ;
 scalar_t__ DMU_OT_OBJSET ;
 int KM_SLEEP ;
 int * avl_find (int *,TYPE_4__*,int *) ;
 int avl_insert (int *,TYPE_4__*,int ) ;
 int cv_broadcast (int *) ;
 scalar_t__ dsl_scan_check_prefetch_resume (TYPE_5__*,int *) ;
 TYPE_4__* kmem_alloc (int,int ) ;
 int kmem_free (TYPE_4__*,int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int scan_prefetch_ctx_add_ref (TYPE_5__*,TYPE_6__*) ;
 int scan_prefetch_ctx_rele (TYPE_5__*,TYPE_6__*) ;
 scalar_t__ zfs_no_scrub_prefetch ;

__attribute__((used)) static void
dsl_scan_prefetch(scan_prefetch_ctx_t *spc, blkptr_t *bp, zbookmark_phys_t *zb)
{
 avl_index_t idx;
 dsl_scan_t *scn = spc->spc_scn;
 spa_t *spa = scn->scn_dp->dp_spa;
 scan_prefetch_issue_ctx_t *spic;

 if (zfs_no_scrub_prefetch || BP_IS_REDACTED(bp))
  return;

 if (BP_IS_HOLE(bp) || bp->blk_birth <= scn->scn_phys.scn_cur_min_txg ||
     (BP_GET_LEVEL(bp) == 0 && BP_GET_TYPE(bp) != DMU_OT_DNODE &&
     BP_GET_TYPE(bp) != DMU_OT_OBJSET))
  return;

 if (dsl_scan_check_prefetch_resume(spc, zb))
  return;

 scan_prefetch_ctx_add_ref(spc, scn);
 spic = kmem_alloc(sizeof (scan_prefetch_issue_ctx_t), KM_SLEEP);
 spic->spic_spc = spc;
 spic->spic_bp = *bp;
 spic->spic_zb = *zb;






 mutex_enter(&spa->spa_scrub_lock);
 if (avl_find(&scn->scn_prefetch_queue, spic, &idx) != ((void*)0)) {

  kmem_free(spic, sizeof (scan_prefetch_issue_ctx_t));
  scan_prefetch_ctx_rele(spc, scn);
  mutex_exit(&spa->spa_scrub_lock);
  return;
 }

 avl_insert(&scn->scn_prefetch_queue, spic, idx);
 cv_broadcast(&spa->spa_scrub_io_cv);
 mutex_exit(&spa->spa_scrub_lock);
}
