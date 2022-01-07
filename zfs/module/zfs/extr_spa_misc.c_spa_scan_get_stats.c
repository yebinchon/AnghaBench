
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ spa_scan_pass_issued; int spa_scan_pass_scrub_spent_paused; int spa_scan_pass_scrub_pause; int spa_scan_pass_start; int spa_scan_pass_exam; TYPE_1__* spa_dsl_pool; } ;
typedef TYPE_3__ spa_t ;
struct TYPE_12__ {scalar_t__ pss_func; scalar_t__ pss_issued; scalar_t__ pss_pass_issued; int pss_pass_scrub_spent_paused; int pss_pass_scrub_pause; int pss_pass_start; int pss_pass_exam; int pss_errors; int pss_processed; int pss_to_process; int pss_examined; int pss_to_examine; int pss_end_time; int pss_start_time; int pss_state; } ;
typedef TYPE_4__ pool_scan_stat_t ;
struct TYPE_10__ {scalar_t__ scn_func; int scn_errors; int scn_processed; int scn_to_process; int scn_examined; int scn_to_examine; int scn_end_time; int scn_start_time; int scn_state; } ;
struct TYPE_13__ {scalar_t__ scn_issued_before_pass; TYPE_2__ scn_phys; } ;
typedef TYPE_5__ dsl_scan_t ;
struct TYPE_9__ {TYPE_5__* dp_scan; } ;


 int ENOENT ;
 scalar_t__ POOL_SCAN_NONE ;
 int SET_ERROR (int ) ;
 int bzero (TYPE_4__*,int) ;

int
spa_scan_get_stats(spa_t *spa, pool_scan_stat_t *ps)
{
 dsl_scan_t *scn = spa->spa_dsl_pool ? spa->spa_dsl_pool->dp_scan : ((void*)0);

 if (scn == ((void*)0) || scn->scn_phys.scn_func == POOL_SCAN_NONE)
  return (SET_ERROR(ENOENT));
 bzero(ps, sizeof (pool_scan_stat_t));


 ps->pss_func = scn->scn_phys.scn_func;
 ps->pss_state = scn->scn_phys.scn_state;
 ps->pss_start_time = scn->scn_phys.scn_start_time;
 ps->pss_end_time = scn->scn_phys.scn_end_time;
 ps->pss_to_examine = scn->scn_phys.scn_to_examine;
 ps->pss_examined = scn->scn_phys.scn_examined;
 ps->pss_to_process = scn->scn_phys.scn_to_process;
 ps->pss_processed = scn->scn_phys.scn_processed;
 ps->pss_errors = scn->scn_phys.scn_errors;


 ps->pss_pass_exam = spa->spa_scan_pass_exam;
 ps->pss_pass_start = spa->spa_scan_pass_start;
 ps->pss_pass_scrub_pause = spa->spa_scan_pass_scrub_pause;
 ps->pss_pass_scrub_spent_paused = spa->spa_scan_pass_scrub_spent_paused;
 ps->pss_pass_issued = spa->spa_scan_pass_issued;
 ps->pss_issued =
     scn->scn_issued_before_pass + spa->spa_scan_pass_issued;

 return (0);
}
