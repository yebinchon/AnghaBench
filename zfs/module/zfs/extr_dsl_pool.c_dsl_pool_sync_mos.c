
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zio_t ;
struct TYPE_3__ {int dp_meta_rootbp; int dp_spa; int dp_meta_objset; } ;
typedef TYPE_1__ dsl_pool_t ;
typedef int dmu_tx_t ;


 int VERIFY0 (int ) ;
 int ZIO_FLAG_MUSTSUCCEED ;
 int dmu_objset_sync (int ,int *,int *) ;
 int dprintf_bp (int *,char*,char*) ;
 int spa_set_rootblkptr (int ,int *) ;
 int * zio_root (int ,int *,int *,int ) ;
 int zio_wait (int *) ;

__attribute__((used)) static void
dsl_pool_sync_mos(dsl_pool_t *dp, dmu_tx_t *tx)
{
 zio_t *zio = zio_root(dp->dp_spa, ((void*)0), ((void*)0), ZIO_FLAG_MUSTSUCCEED);
 dmu_objset_sync(dp->dp_meta_objset, zio, tx);
 VERIFY0(zio_wait(zio));
 dprintf_bp(&dp->dp_meta_rootbp, "meta objset rootbp is %s", "");
 spa_set_rootblkptr(dp->dp_spa, &dp->dp_meta_rootbp);
}
