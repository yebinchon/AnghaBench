
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int spa_dsl_pool; } ;
typedef TYPE_1__ spa_t ;


 int ASSERT (int) ;
 int EBUSY ;
 int RW_WRITER ;
 int SCL_ALL ;
 int SET_ERROR (int ) ;
 int dsl_scan_cancel (int ) ;
 scalar_t__ dsl_scan_resilvering (int ) ;
 scalar_t__ spa_config_held (TYPE_1__*,int ,int ) ;

int
spa_scan_stop(spa_t *spa)
{
 ASSERT(spa_config_held(spa, SCL_ALL, RW_WRITER) == 0);
 if (dsl_scan_resilvering(spa->spa_dsl_pool))
  return (SET_ERROR(EBUSY));
 return (dsl_scan_cancel(spa->spa_dsl_pool));
}
