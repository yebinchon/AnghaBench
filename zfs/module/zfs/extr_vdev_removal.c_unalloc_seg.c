
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_19__ {int vcsa_txg; int vcsa_dest_dva; int * vcsa_spa; } ;
typedef TYPE_4__ vdev_copy_segment_arg_t ;
typedef scalar_t__ uint64_t ;
typedef int spa_t ;
struct TYPE_18__ {int member_0; } ;
struct TYPE_17__ {TYPE_3__ member_0; } ;
struct TYPE_16__ {TYPE_2__ member_0; } ;
struct TYPE_20__ {int * blk_dva; TYPE_1__ member_0; } ;
typedef TYPE_5__ blkptr_t ;


 int BP_SET_BIRTH (TYPE_5__*,int ,int ) ;
 int BP_SET_BYTEORDER (TYPE_5__*,int ) ;
 int BP_SET_CHECKSUM (TYPE_5__*,int ) ;
 int BP_SET_COMPRESS (TYPE_5__*,int ) ;
 int BP_SET_DEDUP (TYPE_5__*,int ) ;
 int BP_SET_LEVEL (TYPE_5__*,int ) ;
 int BP_SET_LSIZE (TYPE_5__*,scalar_t__) ;
 int BP_SET_PSIZE (TYPE_5__*,scalar_t__) ;
 int BP_SET_TYPE (TYPE_5__*,int ) ;
 int DMU_OT_NONE ;
 scalar_t__ DVA_GET_OFFSET (int ) ;
 int DVA_GET_VDEV (int ) ;
 int DVA_SET_ASIZE (int *,scalar_t__) ;
 int DVA_SET_OFFSET (int *,scalar_t__) ;
 int DVA_SET_VDEV (int *,int ) ;
 int TXG_INITIAL ;
 int ZFS_HOST_BYTEORDER ;
 int ZIO_CHECKSUM_OFF ;
 int ZIO_COMPRESS_OFF ;
 int zio_free (int *,int ,TYPE_5__*) ;

__attribute__((used)) static void
unalloc_seg(void *arg, uint64_t start, uint64_t size)
{
 vdev_copy_segment_arg_t *vcsa = arg;
 spa_t *spa = vcsa->vcsa_spa;
 blkptr_t bp = { { { {0} } } };

 BP_SET_BIRTH(&bp, TXG_INITIAL, TXG_INITIAL);
 BP_SET_LSIZE(&bp, size);
 BP_SET_PSIZE(&bp, size);
 BP_SET_COMPRESS(&bp, ZIO_COMPRESS_OFF);
 BP_SET_CHECKSUM(&bp, ZIO_CHECKSUM_OFF);
 BP_SET_TYPE(&bp, DMU_OT_NONE);
 BP_SET_LEVEL(&bp, 0);
 BP_SET_DEDUP(&bp, 0);
 BP_SET_BYTEORDER(&bp, ZFS_HOST_BYTEORDER);

 DVA_SET_VDEV(&bp.blk_dva[0], DVA_GET_VDEV(vcsa->vcsa_dest_dva));
 DVA_SET_OFFSET(&bp.blk_dva[0],
     DVA_GET_OFFSET(vcsa->vcsa_dest_dva) + start);
 DVA_SET_ASIZE(&bp.blk_dva[0], size);

 zio_free(spa, vcsa->vcsa_txg, &bp);
}
