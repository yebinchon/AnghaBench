
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ pool_scrub_cmd_t ;
typedef int dsl_scan_t ;
struct TYPE_4__ {int * dp_scan; } ;
typedef TYPE_1__ dsl_pool_t ;
typedef int dmu_tx_t ;


 int EBUSY ;
 int ENOENT ;
 int ENOTSUP ;
 scalar_t__ POOL_SCRUB_NORMAL ;
 scalar_t__ POOL_SCRUB_PAUSE ;
 int SET_ERROR (int ) ;
 TYPE_1__* dmu_tx_pool (int *) ;
 scalar_t__ dsl_scan_is_paused_scrub (int *) ;
 int dsl_scan_scrubbing (TYPE_1__*) ;

__attribute__((used)) static int
dsl_scrub_pause_resume_check(void *arg, dmu_tx_t *tx)
{
 pool_scrub_cmd_t *cmd = arg;
 dsl_pool_t *dp = dmu_tx_pool(tx);
 dsl_scan_t *scn = dp->dp_scan;

 if (*cmd == POOL_SCRUB_PAUSE) {

  if (!dsl_scan_scrubbing(dp))
   return (SET_ERROR(ENOENT));


  if (dsl_scan_is_paused_scrub(scn))
   return (SET_ERROR(EBUSY));
 } else if (*cmd != POOL_SCRUB_NORMAL) {
  return (SET_ERROR(ENOTSUP));
 }

 return (0);
}
