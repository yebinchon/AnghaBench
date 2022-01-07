
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int io_flags; int io_spa; } ;
typedef TYPE_1__ zio_t ;
typedef int dmu_tx_t ;
typedef int blkptr_t ;


 int dmu_tx_get_txg (int *) ;
 int zio_free_sync (TYPE_1__*,int ,int ,int const*,int ) ;
 int zio_nowait (int ) ;

__attribute__((used)) static int
spa_free_sync_cb(void *arg, const blkptr_t *bp, dmu_tx_t *tx)
{
 zio_t *zio = arg;

 zio_nowait(zio_free_sync(zio, zio->io_spa, dmu_tx_get_txg(tx), bp,
     zio->io_flags));
 return (0);
}
