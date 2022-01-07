
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zio_t ;
typedef int spa_t ;
typedef int dmu_tx_t ;
typedef int bplist_t ;


 int VERIFY (int) ;
 int bplist_iterate (int *,int ,int *,int *) ;
 int spa_free_sync_cb ;
 int * zio_root (int *,int *,int *,int ) ;
 scalar_t__ zio_wait (int *) ;

__attribute__((used)) static void
spa_sync_frees(spa_t *spa, bplist_t *bpl, dmu_tx_t *tx)
{
 zio_t *zio = zio_root(spa, ((void*)0), ((void*)0), 0);
 bplist_iterate(bpl, spa_free_sync_cb, zio, tx);
 VERIFY(zio_wait(zio) == 0);
}
