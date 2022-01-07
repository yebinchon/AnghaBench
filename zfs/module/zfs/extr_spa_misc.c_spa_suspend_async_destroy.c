
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int spa_t ;
struct TYPE_5__ {int dp_root_dir; } ;
typedef TYPE_1__ dsl_pool_t ;
typedef int boolean_t ;
struct TYPE_6__ {scalar_t__ dd_used_bytes; } ;


 int B_FALSE ;
 int B_TRUE ;
 int ZFS_SPACE_CHECK_EXTRA_RESERVED ;
 TYPE_4__* dsl_dir_phys (int ) ;
 scalar_t__ dsl_pool_unreserved_space (TYPE_1__*,int ) ;
 TYPE_1__* spa_get_dsl (int *) ;
 scalar_t__ spa_has_checkpoint (int *) ;

boolean_t
spa_suspend_async_destroy(spa_t *spa)
{
 dsl_pool_t *dp = spa_get_dsl(spa);

 uint64_t unreserved = dsl_pool_unreserved_space(dp,
     ZFS_SPACE_CHECK_EXTRA_RESERVED);
 uint64_t used = dsl_dir_phys(dp->dp_root_dir)->dd_used_bytes;
 uint64_t avail = (unreserved > used) ? (unreserved - used) : 0;

 if (spa_has_checkpoint(spa) && avail == 0)
  return (B_TRUE);

 return (B_FALSE);
}
