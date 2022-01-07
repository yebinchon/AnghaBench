
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ io_child_type; int io_gang_tree; struct TYPE_5__* io_gang_leader; int * io_bp; } ;
typedef TYPE_1__ zio_t ;
typedef int blkptr_t ;


 int ASSERT (int) ;
 scalar_t__ BP_IS_GANG (int *) ;
 scalar_t__ ZIO_CHILD_GANG ;
 int zio_gang_tree_assemble (TYPE_1__*,int *,int *) ;

__attribute__((used)) static zio_t *
zio_gang_assemble(zio_t *zio)
{
 blkptr_t *bp = zio->io_bp;

 ASSERT(BP_IS_GANG(bp) && zio->io_gang_leader == ((void*)0));
 ASSERT(zio->io_child_type > ZIO_CHILD_GANG);

 zio->io_gang_leader = zio;

 zio_gang_tree_assemble(zio, bp, &zio->io_gang_tree);

 return (zio);
}
