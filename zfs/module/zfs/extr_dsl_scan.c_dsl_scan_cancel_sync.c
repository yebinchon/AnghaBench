
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* scn_dp; } ;
typedef TYPE_2__ dsl_scan_t ;
typedef int dmu_tx_t ;
struct TYPE_8__ {TYPE_2__* dp_scan; } ;
struct TYPE_6__ {int dp_spa; } ;


 int B_FALSE ;
 int ESC_ZFS_SCRUB_ABORT ;
 int SYNC_MANDATORY ;
 TYPE_5__* dmu_tx_pool (int *) ;
 int dsl_scan_done (TYPE_2__*,int ,int *) ;
 int dsl_scan_sync_state (TYPE_2__*,int *,int ) ;
 int spa_event_notify (int ,int *,int *,int ) ;

__attribute__((used)) static void
dsl_scan_cancel_sync(void *arg, dmu_tx_t *tx)
{
 dsl_scan_t *scn = dmu_tx_pool(tx)->dp_scan;

 dsl_scan_done(scn, B_FALSE, tx);
 dsl_scan_sync_state(scn, tx, SYNC_MANDATORY);
 spa_event_notify(scn->scn_dp->dp_spa, ((void*)0), ((void*)0), ESC_ZFS_SCRUB_ABORT);
}
