
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int sio_nr_dvas; int * sio_dva; int sio_cksum; int sio_birth; int sio_phys_birth; int sio_blk_prop; } ;
typedef TYPE_1__ scan_io_t ;
struct TYPE_7__ {int * blk_dva; int blk_cksum; int blk_birth; int blk_phys_birth; int blk_prop; } ;
typedef TYPE_2__ blkptr_t ;


 int BP_GET_NDVAS (TYPE_2__ const*) ;

__attribute__((used)) static inline void
bp2sio(const blkptr_t *bp, scan_io_t *sio, int dva_i)
{
 sio->sio_blk_prop = bp->blk_prop;
 sio->sio_phys_birth = bp->blk_phys_birth;
 sio->sio_birth = bp->blk_birth;
 sio->sio_cksum = bp->blk_cksum;
 sio->sio_nr_dvas = BP_GET_NDVAS(bp);







 for (int i = 0, j = dva_i; i < sio->sio_nr_dvas; i++, j++) {
  sio->sio_dva[i] = bp->blk_dva[j % sio->sio_nr_dvas];
 }
}
