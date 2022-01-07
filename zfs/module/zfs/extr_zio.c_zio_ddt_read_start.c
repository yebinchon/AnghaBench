
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ io_size; scalar_t__ io_child_type; int io_bookmark; int io_priority; int io_abd; int io_spa; TYPE_4__* io_vsd; scalar_t__* io_child_error; int * io_bp; } ;
typedef TYPE_1__ zio_t ;
struct TYPE_17__ {int ddt_checksum; } ;
typedef TYPE_2__ ddt_t ;
struct TYPE_18__ {scalar_t__ ddp_phys_birth; } ;
typedef TYPE_3__ ddt_phys_t ;
struct TYPE_19__ {int dde_key; TYPE_3__* dde_phys; } ;
typedef TYPE_4__ ddt_entry_t ;
typedef int blkptr_t ;


 int ASSERT (int) ;
 int BP_GET_DEDUP (int *) ;
 scalar_t__ BP_GET_PSIZE (int *) ;
 int B_TRUE ;
 int DDT_PHYS_TYPES ;
 size_t ZIO_CHILD_DDT ;
 scalar_t__ ZIO_CHILD_LOGICAL ;
 int ZIO_DDT_CHILD_FLAGS (TYPE_1__*) ;
 int ZIO_FLAG_DONT_PROPAGATE ;
 int abd_alloc_for_io (scalar_t__,int ) ;
 int ddt_bp_create (int ,int *,TYPE_3__*,int *) ;
 TYPE_3__* ddt_phys_select (TYPE_4__*,int *) ;
 TYPE_4__* ddt_repair_start (TYPE_2__*,int *) ;
 TYPE_2__* ddt_select (int ,int *) ;
 int * zio_ddt_child_read_done ;
 int zio_nowait (int ) ;
 int zio_read (TYPE_1__*,int ,int *,int ,scalar_t__,int *,TYPE_4__*,int ,int,int *) ;

__attribute__((used)) static zio_t *
zio_ddt_read_start(zio_t *zio)
{
 blkptr_t *bp = zio->io_bp;

 ASSERT(BP_GET_DEDUP(bp));
 ASSERT(BP_GET_PSIZE(bp) == zio->io_size);
 ASSERT(zio->io_child_type == ZIO_CHILD_LOGICAL);

 if (zio->io_child_error[ZIO_CHILD_DDT]) {
  ddt_t *ddt = ddt_select(zio->io_spa, bp);
  ddt_entry_t *dde = ddt_repair_start(ddt, bp);
  ddt_phys_t *ddp = dde->dde_phys;
  ddt_phys_t *ddp_self = ddt_phys_select(dde, bp);
  blkptr_t blk;

  ASSERT(zio->io_vsd == ((void*)0));
  zio->io_vsd = dde;

  if (ddp_self == ((void*)0))
   return (zio);

  for (int p = 0; p < DDT_PHYS_TYPES; p++, ddp++) {
   if (ddp->ddp_phys_birth == 0 || ddp == ddp_self)
    continue;
   ddt_bp_create(ddt->ddt_checksum, &dde->dde_key, ddp,
       &blk);
   zio_nowait(zio_read(zio, zio->io_spa, &blk,
       abd_alloc_for_io(zio->io_size, B_TRUE),
       zio->io_size, zio_ddt_child_read_done, dde,
       zio->io_priority, ZIO_DDT_CHILD_FLAGS(zio) |
       ZIO_FLAG_DONT_PROPAGATE, &zio->io_bookmark));
  }
  return (zio);
 }

 zio_nowait(zio_read(zio, zio->io_spa, bp,
     zio->io_abd, zio->io_size, ((void*)0), ((void*)0), zio->io_priority,
     ZIO_DDT_CHILD_FLAGS(zio), &zio->io_bookmark));

 return (zio);
}
