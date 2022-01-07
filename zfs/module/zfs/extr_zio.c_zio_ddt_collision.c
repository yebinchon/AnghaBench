
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int io_flags; scalar_t__ io_size; scalar_t__ io_orig_size; int * io_orig_abd; int io_bookmark; int * io_bp; int * io_abd; scalar_t__ io_bp_override; int * io_spa; } ;
typedef TYPE_1__ zio_t ;
typedef scalar_t__ uint64_t ;
typedef int spa_t ;
typedef int ddt_t ;
struct TYPE_12__ {scalar_t__ ddp_phys_birth; } ;
typedef TYPE_2__ ddt_phys_t ;
struct TYPE_13__ {TYPE_2__* dde_phys; TYPE_1__** dde_lead_zio; } ;
typedef TYPE_3__ ddt_entry_t ;
typedef int boolean_t ;
typedef int blkptr_t ;
typedef int arc_flags_t ;
struct TYPE_14__ {int b_data; } ;
typedef TYPE_4__ arc_buf_t ;
typedef int abd_t ;


 int ARC_FLAG_WAIT ;
 int ASSERT (int) ;
 scalar_t__ BP_GET_LSIZE (int *) ;
 scalar_t__ BP_GET_PSIZE (int *) ;
 int B_FALSE ;
 int B_TRUE ;
 int DDT_PHYS_SINGLE ;
 int DDT_PHYS_TRIPLE ;
 int ENOENT ;
 int SET_ERROR (int ) ;
 int ZIO_FLAG_CANFAIL ;
 int ZIO_FLAG_RAW ;
 int ZIO_FLAG_SPECULATIVE ;
 int ZIO_PRIORITY_SYNC_READ ;
 int * abd_alloc_for_io (scalar_t__,int) ;
 scalar_t__ abd_cmp (int *,int *) ;
 scalar_t__ abd_cmp_buf (int *,int ,scalar_t__) ;
 int abd_free (int *) ;
 int arc_buf_destroy (TYPE_4__*,TYPE_4__**) ;
 int arc_getbuf_func ;
 int arc_read (int *,int *,int *,int ,TYPE_4__**,int ,int,int *,int *) ;
 int ddt_bp_fill (TYPE_2__*,int *,scalar_t__) ;
 int ddt_enter (int *) ;
 int ddt_exit (int *) ;
 int zio_read (int *,int *,int *,int *,scalar_t__,int *,int *,int ,int,int *) ;
 int zio_wait (int ) ;

__attribute__((used)) static boolean_t
zio_ddt_collision(zio_t *zio, ddt_t *ddt, ddt_entry_t *dde)
{
 spa_t *spa = zio->io_spa;
 boolean_t do_raw = !!(zio->io_flags & ZIO_FLAG_RAW);

 ASSERT(!(zio->io_bp_override && do_raw));
 for (int p = DDT_PHYS_SINGLE; p <= DDT_PHYS_TRIPLE; p++) {
  zio_t *lio = dde->dde_lead_zio[p];

  if (lio != ((void*)0) && do_raw) {
   return (lio->io_size != zio->io_size ||
       abd_cmp(zio->io_abd, lio->io_abd) != 0);
  } else if (lio != ((void*)0)) {
   return (lio->io_orig_size != zio->io_orig_size ||
       abd_cmp(zio->io_orig_abd, lio->io_orig_abd) != 0);
  }
 }

 for (int p = DDT_PHYS_SINGLE; p <= DDT_PHYS_TRIPLE; p++) {
  ddt_phys_t *ddp = &dde->dde_phys[p];

  if (ddp->ddp_phys_birth != 0 && do_raw) {
   blkptr_t blk = *zio->io_bp;
   uint64_t psize;
   abd_t *tmpabd;
   int error;

   ddt_bp_fill(ddp, &blk, ddp->ddp_phys_birth);
   psize = BP_GET_PSIZE(&blk);

   if (psize != zio->io_size)
    return (B_TRUE);

   ddt_exit(ddt);

   tmpabd = abd_alloc_for_io(psize, B_TRUE);

   error = zio_wait(zio_read(((void*)0), spa, &blk, tmpabd,
       psize, ((void*)0), ((void*)0), ZIO_PRIORITY_SYNC_READ,
       ZIO_FLAG_CANFAIL | ZIO_FLAG_SPECULATIVE |
       ZIO_FLAG_RAW, &zio->io_bookmark));

   if (error == 0) {
    if (abd_cmp(tmpabd, zio->io_abd) != 0)
     error = SET_ERROR(ENOENT);
   }

   abd_free(tmpabd);
   ddt_enter(ddt);
   return (error != 0);
  } else if (ddp->ddp_phys_birth != 0) {
   arc_buf_t *abuf = ((void*)0);
   arc_flags_t aflags = ARC_FLAG_WAIT;
   blkptr_t blk = *zio->io_bp;
   int error;

   ddt_bp_fill(ddp, &blk, ddp->ddp_phys_birth);

   if (BP_GET_LSIZE(&blk) != zio->io_orig_size)
    return (B_TRUE);

   ddt_exit(ddt);

   error = arc_read(((void*)0), spa, &blk,
       arc_getbuf_func, &abuf, ZIO_PRIORITY_SYNC_READ,
       ZIO_FLAG_CANFAIL | ZIO_FLAG_SPECULATIVE,
       &aflags, &zio->io_bookmark);

   if (error == 0) {
    if (abd_cmp_buf(zio->io_orig_abd, abuf->b_data,
        zio->io_orig_size) != 0)
     error = SET_ERROR(ENOENT);
    arc_buf_destroy(abuf, &abuf);
   }

   ddt_enter(ddt);
   return (error != 0);
  }
 }

 return (B_FALSE);
}
