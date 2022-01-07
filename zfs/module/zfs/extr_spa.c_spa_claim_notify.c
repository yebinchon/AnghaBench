
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* io_bp; scalar_t__ io_error; TYPE_3__* io_spa; } ;
typedef TYPE_2__ zio_t ;
struct TYPE_7__ {scalar_t__ spa_claim_max_txg; int spa_props_lock; } ;
typedef TYPE_3__ spa_t ;
struct TYPE_5__ {scalar_t__ blk_birth; } ;


 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
spa_claim_notify(zio_t *zio)
{
 spa_t *spa = zio->io_spa;

 if (zio->io_error)
  return;

 mutex_enter(&spa->spa_props_lock);
 if (spa->spa_claim_max_txg < zio->io_bp->blk_birth)
  spa->spa_claim_max_txg = zio->io_bp->blk_birth;
 mutex_exit(&spa->spa_props_lock);
}
