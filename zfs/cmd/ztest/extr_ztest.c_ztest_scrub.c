
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ztest_ds_t ;
typedef int uint64_t ;
typedef int spa_t ;


 int ASSERT0 (int) ;
 int EBUSY ;
 int POOL_SCAN_SCRUB ;
 int poll (int *,int ,int) ;
 int spa_scan (int *,int ) ;
 scalar_t__ ztest_device_removal_active ;
 int ztest_scrub_impl (int *) ;
 int * ztest_spa ;

void
ztest_scrub(ztest_ds_t *zd, uint64_t id)
{
 spa_t *spa = ztest_spa;
 int error;




 if (ztest_device_removal_active)
  return;




 (void) spa_scan(spa, POOL_SCAN_SCRUB);
 (void) poll(((void*)0), 0, 100);

 error = ztest_scrub_impl(spa);
 if (error == EBUSY)
  error = 0;
 ASSERT0(error);
}
