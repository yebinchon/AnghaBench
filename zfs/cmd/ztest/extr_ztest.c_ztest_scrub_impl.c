
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spa_t ;


 int B_TRUE ;
 int ECKSUM ;
 int POOL_SCAN_SCRUB ;
 scalar_t__ dsl_scan_scrubbing (int ) ;
 int spa_get_dsl (int *) ;
 scalar_t__ spa_get_errlog_size (int *) ;
 int spa_scan (int *,int ) ;
 int txg_wait_synced (int ,int ) ;
 int ztest_pool_scrubbed ;

__attribute__((used)) static int
ztest_scrub_impl(spa_t *spa)
{
 int error = spa_scan(spa, POOL_SCAN_SCRUB);
 if (error)
  return (error);

 while (dsl_scan_scrubbing(spa_get_dsl(spa)))
  txg_wait_synced(spa_get_dsl(spa), 0);

 if (spa_get_errlog_size(spa) > 0)
  return (ECKSUM);

 ztest_pool_scrubbed = B_TRUE;

 return (0);
}
