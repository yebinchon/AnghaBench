
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int io_txg; int io_spa; } ;
typedef TYPE_1__ zio_t ;
typedef int zio_gang_node_t ;
typedef int uint64_t ;
typedef int blkptr_t ;
typedef int abd_t ;


 int ZIO_GANG_CHILD_FLAGS (TYPE_1__*) ;
 TYPE_1__* zio_free_sync (TYPE_1__*,int ,int ,int *,int ) ;

__attribute__((used)) static zio_t *
zio_free_gang(zio_t *pio, blkptr_t *bp, zio_gang_node_t *gn, abd_t *data,
    uint64_t offset)
{
 return (zio_free_sync(pio, pio->io_spa, pio->io_txg, bp,
     ZIO_GANG_CHILD_FLAGS(pio)));
}
