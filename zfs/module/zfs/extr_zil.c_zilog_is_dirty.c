
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* zl_dmu_pool; } ;
typedef TYPE_1__ zilog_t ;
struct TYPE_6__ {int dp_dirty_zilogs; } ;
typedef TYPE_2__ dsl_pool_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int TXG_SIZE ;
 scalar_t__ txg_list_member (int *,TYPE_1__*,int) ;

boolean_t
zilog_is_dirty(zilog_t *zilog)
{
 dsl_pool_t *dp = zilog->zl_dmu_pool;

 for (int t = 0; t < TXG_SIZE; t++) {
  if (txg_list_member(&dp->dp_dirty_zilogs, zilog, t))
   return (B_TRUE);
 }
 return (B_FALSE);
}
