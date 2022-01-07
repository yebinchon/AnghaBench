
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ zp_checksum; scalar_t__ zp_compress; int zp_level; scalar_t__ zp_copies; scalar_t__ zp_dedup_verify; scalar_t__ zp_dedup; scalar_t__ zp_encrypt; int zp_type; } ;
struct TYPE_8__ {TYPE_2__ io_prop; int * io_physdone; int * io_children_ready; int * io_ready; } ;
typedef TYPE_1__ zio_t ;
typedef TYPE_2__ zio_prop_t ;
typedef int zio_priority_t ;
typedef int zio_done_func_t ;
typedef int zbookmark_phys_t ;
typedef int uint64_t ;
typedef int spa_t ;
typedef enum zio_flag { ____Placeholder_zio_flag } zio_flag ;
typedef int blkptr_t ;
typedef int abd_t ;


 int ASSERT (int) ;
 scalar_t__ B_FALSE ;
 scalar_t__ DMU_OT_IS_VALID (int ) ;
 scalar_t__ ZIO_CHECKSUM_FUNCTIONS ;
 scalar_t__ ZIO_CHECKSUM_OFF ;
 scalar_t__ ZIO_COMPRESS_FUNCTIONS ;
 scalar_t__ ZIO_COMPRESS_OFF ;
 int ZIO_DDT_CHILD_WRITE_PIPELINE ;
 int ZIO_FLAG_DDT_CHILD ;
 int ZIO_STAGE_OPEN ;
 int ZIO_TYPE_WRITE ;
 int ZIO_WRITE_PIPELINE ;
 scalar_t__ spa_max_replication (int *) ;
 TYPE_1__* zio_create (TYPE_1__*,int *,int ,int *,int *,int ,int ,int *,void*,int ,int ,int,int *,int ,int const*,int ,int ) ;

zio_t *
zio_write(zio_t *pio, spa_t *spa, uint64_t txg, blkptr_t *bp,
    abd_t *data, uint64_t lsize, uint64_t psize, const zio_prop_t *zp,
    zio_done_func_t *ready, zio_done_func_t *children_ready,
    zio_done_func_t *physdone, zio_done_func_t *done,
    void *private, zio_priority_t priority, enum zio_flag flags,
    const zbookmark_phys_t *zb)
{
 zio_t *zio;

 ASSERT(zp->zp_checksum >= ZIO_CHECKSUM_OFF &&
     zp->zp_checksum < ZIO_CHECKSUM_FUNCTIONS &&
     zp->zp_compress >= ZIO_COMPRESS_OFF &&
     zp->zp_compress < ZIO_COMPRESS_FUNCTIONS &&
     DMU_OT_IS_VALID(zp->zp_type) &&
     zp->zp_level < 32 &&
     zp->zp_copies > 0 &&
     zp->zp_copies <= spa_max_replication(spa));

 zio = zio_create(pio, spa, txg, bp, data, lsize, psize, done, private,
     ZIO_TYPE_WRITE, priority, flags, ((void*)0), 0, zb,
     ZIO_STAGE_OPEN, (flags & ZIO_FLAG_DDT_CHILD) ?
     ZIO_DDT_CHILD_WRITE_PIPELINE : ZIO_WRITE_PIPELINE);

 zio->io_ready = ready;
 zio->io_children_ready = children_ready;
 zio->io_physdone = physdone;
 zio->io_prop = *zp;
 if (data == ((void*)0) &&
     (zio->io_prop.zp_dedup_verify || zio->io_prop.zp_encrypt)) {
  zio->io_prop.zp_dedup = zio->io_prop.zp_dedup_verify = B_FALSE;
 }

 return (zio);
}
