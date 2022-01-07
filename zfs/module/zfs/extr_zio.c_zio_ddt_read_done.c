
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ io_size; scalar_t__ io_child_type; int io_stage; TYPE_2__* io_vsd; scalar_t__* io_child_error; int io_abd; int io_spa; int * io_bp; } ;
typedef TYPE_1__ zio_t ;
typedef int ddt_t ;
struct TYPE_9__ {int * dde_repair_abd; } ;
typedef TYPE_2__ ddt_entry_t ;
typedef int blkptr_t ;


 int ASSERT (int) ;
 int BP_GET_DEDUP (int *) ;
 scalar_t__ BP_GET_PSIZE (int *) ;
 int B_FALSE ;
 scalar_t__ SPA_LOAD_NONE ;
 size_t ZIO_CHILD_DDT ;
 int ZIO_CHILD_DDT_BIT ;
 scalar_t__ ZIO_CHILD_LOGICAL ;
 int ZIO_STAGE_DDT_READ_START ;
 int ZIO_TASKQ_ISSUE ;
 int ZIO_WAIT_DONE ;
 int abd_copy (int ,int *,scalar_t__) ;
 int ddt_repair_done (int *,TYPE_2__*) ;
 int * ddt_select (int ,int *) ;
 scalar_t__ spa_load_state (int ) ;
 int zio_taskq_dispatch (TYPE_1__*,int ,int ) ;
 scalar_t__ zio_wait_for_children (TYPE_1__*,int ,int ) ;

__attribute__((used)) static zio_t *
zio_ddt_read_done(zio_t *zio)
{
 blkptr_t *bp = zio->io_bp;

 if (zio_wait_for_children(zio, ZIO_CHILD_DDT_BIT, ZIO_WAIT_DONE)) {
  return (((void*)0));
 }

 ASSERT(BP_GET_DEDUP(bp));
 ASSERT(BP_GET_PSIZE(bp) == zio->io_size);
 ASSERT(zio->io_child_type == ZIO_CHILD_LOGICAL);

 if (zio->io_child_error[ZIO_CHILD_DDT]) {
  ddt_t *ddt = ddt_select(zio->io_spa, bp);
  ddt_entry_t *dde = zio->io_vsd;
  if (ddt == ((void*)0)) {
   ASSERT(spa_load_state(zio->io_spa) != SPA_LOAD_NONE);
   return (zio);
  }
  if (dde == ((void*)0)) {
   zio->io_stage = ZIO_STAGE_DDT_READ_START >> 1;
   zio_taskq_dispatch(zio, ZIO_TASKQ_ISSUE, B_FALSE);
   return (((void*)0));
  }
  if (dde->dde_repair_abd != ((void*)0)) {
   abd_copy(zio->io_abd, dde->dde_repair_abd,
       zio->io_size);
   zio->io_child_error[ZIO_CHILD_DDT] = 0;
  }
  ddt_repair_done(ddt, dde);
  zio->io_vsd = ((void*)0);
 }

 ASSERT(zio->io_vsd == ((void*)0));

 return (zio);
}
