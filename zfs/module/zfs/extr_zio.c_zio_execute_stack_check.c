
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int io_spa; } ;
typedef TYPE_2__ zio_t ;
struct TYPE_7__ {scalar_t__ tx_sync_thread; } ;
struct TYPE_9__ {int dp_spa; TYPE_1__ dp_tx; } ;
typedef TYPE_3__ dsl_pool_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int ZIO_TASKQ_ISSUE ;
 int ZIO_TASKQ_ISSUE_HIGH ;
 scalar_t__ curthread ;
 TYPE_3__* spa_get_dsl (int ) ;
 scalar_t__ spa_is_initializing (int ) ;
 int zio_taskq_member (TYPE_2__*,int ) ;

boolean_t
zio_execute_stack_check(zio_t *zio)
{

 dsl_pool_t *dp = spa_get_dsl(zio->io_spa);


 if (dp && curthread == dp->dp_tx.tx_sync_thread)
  return (B_TRUE);


 if (dp && spa_is_initializing(dp->dp_spa) &&
     !zio_taskq_member(zio, ZIO_TASKQ_ISSUE) &&
     !zio_taskq_member(zio, ZIO_TASKQ_ISSUE_HIGH))
  return (B_TRUE);


 return (B_FALSE);
}
