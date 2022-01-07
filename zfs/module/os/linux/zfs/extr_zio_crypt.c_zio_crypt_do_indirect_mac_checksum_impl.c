
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef scalar_t__ boolean_t ;
typedef int blkptr_t ;
typedef int SHA2_CTX ;


 int ECKSUM ;
 int SET_ERROR (int ) ;
 int SHA2Final (int *,int *) ;
 int SHA2Init (int ,int *) ;
 int SHA512 ;
 int SHA512_DIGEST_LENGTH ;
 int SPA_BLKPTRSHIFT ;
 int ZIO_DATA_MAC_LEN ;
 scalar_t__ bcmp (int *,int *,int ) ;
 int bcopy (int *,int *,int ) ;
 int zio_crypt_bp_do_indrect_checksum_updates (int *,int ,scalar_t__,int *) ;

__attribute__((used)) static int
zio_crypt_do_indirect_mac_checksum_impl(boolean_t generate, void *buf,
    uint_t datalen, uint64_t version, boolean_t byteswap, uint8_t *cksum)
{
 blkptr_t *bp;
 int i, epb = datalen >> SPA_BLKPTRSHIFT;
 SHA2_CTX ctx;
 uint8_t digestbuf[SHA512_DIGEST_LENGTH];


 SHA2Init(SHA512, &ctx);
 for (i = 0, bp = buf; i < epb; i++, bp++) {
  zio_crypt_bp_do_indrect_checksum_updates(&ctx, version,
      byteswap, bp);
 }
 SHA2Final(digestbuf, &ctx);

 if (generate) {
  bcopy(digestbuf, cksum, ZIO_DATA_MAC_LEN);
  return (0);
 }

 if (bcmp(digestbuf, cksum, ZIO_DATA_MAC_LEN) != 0)
  return (SET_ERROR(ECKSUM));

 return (0);
}
