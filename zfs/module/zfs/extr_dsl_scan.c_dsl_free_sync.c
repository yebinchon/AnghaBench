
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int io_flags; } ;
typedef TYPE_1__ zio_t ;
typedef int uint64_t ;
struct TYPE_8__ {int dp_spa; } ;
typedef TYPE_2__ dsl_pool_t ;
typedef int blkptr_t ;


 int ASSERT (int ) ;
 int dsl_pool_sync_context (TYPE_2__*) ;
 int zio_free_sync (TYPE_1__*,int ,int ,int const*,int ) ;
 int zio_nowait (int ) ;

void
dsl_free_sync(zio_t *pio, dsl_pool_t *dp, uint64_t txg, const blkptr_t *bpp)
{
 ASSERT(dsl_pool_sync_context(dp));
 zio_nowait(zio_free_sync(pio, dp->dp_spa, txg, bpp, pio->io_flags));
}
