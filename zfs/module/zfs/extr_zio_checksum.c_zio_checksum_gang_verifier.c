
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zio_cksum_t ;
typedef int uint64_t ;
typedef int dva_t ;
typedef int blkptr_t ;


 int ASSERT (int ) ;
 int * BP_IDENTITY (int const*) ;
 int BP_IS_GANG (int const*) ;
 int BP_PHYSICAL_BIRTH (int const*) ;
 int DVA_GET_OFFSET (int const*) ;
 int DVA_GET_VDEV (int const*) ;
 int ZIO_SET_CHECKSUM (int *,int ,int ,int ,int ) ;

__attribute__((used)) static void
zio_checksum_gang_verifier(zio_cksum_t *zcp, const blkptr_t *bp)
{
 const dva_t *dva = BP_IDENTITY(bp);
 uint64_t txg = BP_PHYSICAL_BIRTH(bp);

 ASSERT(BP_IS_GANG(bp));

 ZIO_SET_CHECKSUM(zcp, DVA_GET_VDEV(dva), DVA_GET_OFFSET(dva), txg, 0);
}
